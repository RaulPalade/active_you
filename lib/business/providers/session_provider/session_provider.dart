import 'dart:developer';

import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/person_role/person_role.dart';
import 'package:active_you/business/models/person_workout/person_workout.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/api_provider.dart';
import 'package:active_you/business/providers/session_provider/session_provider_state.dart';
import 'package:active_you/business/utils/SecureStorageManager.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class SessionProvider extends StateNotifier<SessionProviderState> {
  final Ref ref;

  SessionProvider(this.ref) : super(const SessionProviderState());

  Future<bool> login(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return true;
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      SecureStorageManager storage = SecureStorageManager();
      await storage.deleteValue(storage.idTokenKey);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> register(PersonRole personRole) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: personRole.person.email ?? "",
        password: personRole.person.password ?? "",
      );

      String userType =
          personRole.role.name?.toLowerCase() == "user" ? "users" : "trainers";
      CollectionReference collection =
          FirebaseFirestore.instance.collection(userType);

      final personData = personRole.person.toJson();
      removeNullFields(personData);
      collection.doc(personRole.person.email).set(personData);

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

  void removeNullFields(Map<String, dynamic> obj) {
    obj.removeWhere((key, value) => value == null || key == 'password');
  }

  Future<void> _addAllSubcollections(DocumentReference userDocRef,
      String collectionName, List<dynamic>? dataList) async {
    log(dataList.toString());
    if (dataList != null && dataList.isNotEmpty) {
      final subCollectionRef = userDocRef.collection(collectionName);

      // Rimuovi eventuali documenti preesistenti
      await subCollectionRef.get().then((snapshot) {
        for (QueryDocumentSnapshot doc in snapshot.docs) {
          doc.reference.delete();
        }
      });

      // Aggiungi tutti gli elementi della lista come documenti nella sottocollezione
      for (var i = 0; i < dataList.length; i++) {
        log(dataList[i].toString());
        await subCollectionRef.add({'item': dataList[i]});
      }
    }
  }

  Future<bool> getLoggedPerson(String email) async {
    try {
      final currentPerson =
          await ref.read(restClientPersonProvider).getPersonByEmail(email);
      if (currentPerson.email != null) {
        state = state.copyWith(currentPerson: currentPerson);
        print(currentPerson);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      await _catchErrorOnFetch(e);
      return false;
    }
  }

  Future<Person?> getPersonById(int id) async {
    try {
      return await ref.read(restClientPersonProvider).getPersonById(id);
    } catch (e) {
      await _catchErrorOnFetch(e);
      return null;
    }
  }

  Future<void> addGoal(Goal goal) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);

      final response = await ref
          .read(restClientPersonProvider)
          .addGoal(state.currentPerson!.id!, goal);

      if (response.response.statusCode == 200) {
        var updatedPerson = state.currentPerson?.copyWith(
          myGoals: [...state.currentPerson!.myGoals!, goal],
        );

        state = state.copyWith(currentPerson: updatedPerson);
      }
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
  }

  Future<void> removeGoal(int goalId) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);

      final response = await ref
          .read(restClientPersonProvider)
          .removeGoal(state.currentPerson!.id!, goalId);

      if (response.response.statusCode == 200) {
        var updatedPerson = state.currentPerson?.copyWith(
          myGoals: List<Goal>.from(state.currentPerson!.myGoals!)
            ..removeWhere((goal) => goal.id == goalId),
        );

        state = state.copyWith(currentPerson: updatedPerson);
      }
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
  }

  Future<void> followPerson(Person person) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);

      print(state.currentPerson);

      Map<String, dynamic> from = {"id": state.currentPerson!.id};
      Map<String, dynamic> to = {"id": person.id};

      Map<String, dynamic> object = {
        "from": from,
        "to": to,
      };

      final response =
          await ref.read(restClientPersonProvider).followPerson(object);

      if (response.response.statusCode == 200) {
        var updatedPerson = state.currentPerson?.copyWith(
          following: [...?state.currentPerson!.following, person.id!],
        );

        state = state.copyWith(currentPerson: updatedPerson);
      }

      print(state.currentPerson);
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
  }

  Future<void> unfollowPerson(int id) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);
      print(state.currentPerson);

      final response = await ref
          .read(restClientPersonProvider)
          .unfollowPerson(state.currentPerson!.id!, id);

      if (response.response.statusCode == 200) {
        var currentPerson = state.currentPerson;
        if (currentPerson != null && currentPerson.following != null) {
          var updatedFollowing = List<int>.from(currentPerson.following!)
            ..removeWhere((personId) => personId == id);

          var updatedPerson =
              currentPerson.copyWith(following: updatedFollowing);

          state = state.copyWith(currentPerson: updatedPerson);
        }
      }
      print(state.currentPerson);
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
  }

  Future<bool> saveWorkout(Workout workout) async {
    try {
      PersonWorkout personWorkout = PersonWorkout(
        id: null,
        idPerson: state.currentPerson!.id,
        workout: workout,
        initDate: DateTime.now(),
        endDate: null,
        completed: false,
      );

      final response = await ref
          .read(restClientWorkoutProvider)
          .saveWorkoutForUser(personWorkout);

      if (response.response.statusCode == 200) {
        var updatedPerson = state.currentPerson?.copyWith(
          myWorkouts: [...?state.currentPerson!.myWorkouts, workout],
        );

        state = state.copyWith(currentPerson: updatedPerson);
        return true;
      } else {
        return false;
      }
    } catch (err) {
      await _catchErrorOnFetch(err);
      return false;
    }
  }

  Future<void> _catchErrorOnFetch(Object err) async {
    var connectivityResult = await InternetConnectionChecker().hasConnection;
    ErrorApiCall errorType = ErrorApiCall.generic;
    if (!connectivityResult) {
      errorType = ErrorApiCall.noConnection;
    }
    state = state = SessionProviderState(
      currentPerson: state.currentPerson,
      errorApiCall: errorType,
    );
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
