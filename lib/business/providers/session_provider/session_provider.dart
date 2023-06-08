import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/person_role/person_role.dart';
import 'package:active_you/business/models/person_workout/person_workout.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/api_provider.dart';
import 'package:active_you/business/providers/session_provider/session_provider_state.dart';
import 'package:active_you/business/utils/SecureStorageManager.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class SessionProvider extends StateNotifier<SessionProviderState> {
  final Ref ref;

  SessionProvider(this.ref) : super(const SessionProviderState());

  Future<bool> login(String email, String password) async {
    try {
      state = const SessionProviderState(currentPerson: null, loading: true);

      final response =
          await ref.read(restClientPersonProvider).login(email, password);

      if (response.response.statusCode == 200) {
        SecureStorageManager storageManager = SecureStorageManager();
        storageManager.writeValue(
            storageManager.idTokenKey, response.data["access_token"]);

        final currentPerson = await getPersonById(0);
        if (currentPerson != null) {
          state = state.copyWith(currentPerson: currentPerson, loading: false);
        }
        return true;
      } else {
        return false;
      }
    } catch (err) {
      await _catchErrorOnFetch(err);
      return false;
    }
  }

  Future<bool> register(PersonRole personRole) async {
    try {
      final response =
          await ref.read(restClientPersonProvider).register(personRole);
      if (response.response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (err) {
      _catchErrorOnFetch(err);
      return false;
    }
  }

  Future<void> getLoggedPerson(String email) async {
    try {
      final currentPerson =
          await ref.read(restClientPersonProvider).getPersonByEmail(email);
      state = state.copyWith(currentPerson: currentPerson);
    } catch (e) {
      await _catchErrorOnFetch(e);
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

  Future<void> saveWorkout(Workout workout) async {
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
      }
    } catch (err) {
      await _catchErrorOnFetch(err);
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
