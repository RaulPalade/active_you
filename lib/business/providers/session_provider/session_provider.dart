import 'dart:developer';

import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/session_provider/session_provider_state.dart';
import 'package:active_you/utils/firebase_methods.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SessionProvider extends StateNotifier<SessionProviderState> {
  final Ref ref;
  FirebaseMethods firebase = FirebaseMethods();

  SessionProvider(this.ref) : super(const SessionProviderState());

  Future<bool> login(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> register(Person person, String role) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: person.email ?? "",
        password: person.password ?? "",
      );

      String userType = role.toLowerCase() == "user" ? "users" : "trainers";
      final personData = person.toJson();
      clearPersonObject(personData);

      firebase.addNewDocument(userType, person.email, personData);

      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  void removeObjects(Map<String, dynamic> obj) {
    obj.removeWhere((key, value) => value is Map);
  }

  void removeLists(Map<String, dynamic> obj) {
    obj.removeWhere((key, value) => value is List);
  }

  void clearPersonObject(Map<String, dynamic> obj) {
    obj.removeWhere(
      (key, value) =>
          key == 'myWorkouts' ||
          key == 'createdWorkouts' ||
          key == 'myGoals' ||
          key == 'password',
    );
  }

  Future<bool> getLoggedPerson(String email) async {
    try {
      final document = await firebase.getDocumentById("users", email);
      if (document.data() != null) {
        state = state.copyWith(currentPerson: document.data() as Person);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<Person?> getPersonById(String email) async {
    try {
      final document = await firebase.getDocumentById("users", email);
      return document.data() as Person;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  Future<void> addGoal(Goal goal) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);

      await firebase.addDocToSubCollection(
          "users", state.currentPerson?.email ?? "", "goals", goal);

      var updatedPerson = state.currentPerson?.copyWith(
        myGoals: [...state.currentPerson!.myGoals!, goal],
      );

      state = state.copyWith(currentPerson: updatedPerson);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> removeGoal(String goalId) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);

      final updateData = {"endDate": DateTime.now(), "completed": true};
      await firebase.updateSubDocument(
        "users",
        state.currentPerson?.email ?? "",
        "goals",
        goalId,
        updateData,
      );

      var updatedPerson = state.currentPerson?.copyWith(
        myGoals: List<Goal>.from(state.currentPerson!.myGoals!)
          ..removeWhere((goal) => goal.id == goalId),
      );

      state = state.copyWith(currentPerson: updatedPerson);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> followPerson(Person person) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);

      final following = {
        "following": FieldValue.arrayUnion([person.email!]),
      };
      final followers = {
        "followers": FieldValue.arrayUnion([state.currentPerson?.email!]),
      };

      await firebase.updateMainDocument(
          "users", state.currentPerson?.email ?? "", following);
      await firebase.updateMainDocument("users", person.email ?? "", followers);

      var updatedPerson = state.currentPerson?.copyWith(
        following: [...?state.currentPerson!.following, person.email!],
      );

      state = state.copyWith(currentPerson: updatedPerson);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> unfollowPerson(String id) async {
    try {
      state = SessionProviderState(
        currentPerson: state.currentPerson,
        loading: true,
      );

      var currentPerson = state.currentPerson;
      if (currentPerson != null && currentPerson.following != null) {
        var updatedFollowing = List<String>.from(currentPerson.following!)
          ..remove(id);
        var updatedPerson = currentPerson.copyWith(following: updatedFollowing);
        state = state.copyWith(currentPerson: updatedPerson);

        await firebase.updateMainDocument(
          "users",
          currentPerson.email ?? "",
          {"following": updatedFollowing},
        );

        var document = await firebase.getDocumentById("users", id);
        var unfollowedPerson = document.data() as Person;
        if (unfollowedPerson.followers != null) {
          var updatedFollowers = List<String>.from(unfollowedPerson.followers!)
            ..remove(currentPerson.email);

          await firebase.updateMainDocument(
            "users",
            id,
            {"followers": updatedFollowers},
          );
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<bool> saveWorkout(Workout workout) async {
    try {
      await firebase.addDocToSubCollection(
          "users", state.currentPerson?.email ?? "", "workouts", workout);

      var updatedPerson = state.currentPerson?.copyWith(
        myWorkouts: [...?state.currentPerson!.myWorkouts, workout],
      );
      state = state.copyWith(currentPerson: updatedPerson);
      return true;
    } catch (err) {
      return false;
    }
  }
}

final sessionProvider =
    StateNotifierProvider<SessionProvider, SessionProviderState>(
        (ref) => SessionProvider(ref));

final currentPersonProvider = Provider<Person?>((ref) {
  return ref.watch(sessionProvider).currentPerson;
});

final sessionLoadingProvider = Provider<bool>((ref) {
  return ref.watch(sessionProvider).loading;
});
