import 'package:active_you/business/models/auth/signin/sign_in.dart';
import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/api_provider.dart';
import 'package:active_you/business/providers/session_provider/session_provider_state.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class SessionProvider extends StateNotifier<SessionProviderState> {
  final Ref ref;
  CancelToken? tokenLastRequest;

  SessionProvider(this.ref) : super(const SessionProviderState());

  Future<void> login(String email, String password) async {
    try {
      state = const SessionProviderState(currentPerson: null, loading: true);

      final currentPerson = await ref
          .read(restClientPersonProvider)
          .login(tokenLastRequest!, SignIn(email: email, password: password));

      state = SessionProviderState(
        currentPerson: currentPerson,
        loading: false,
      );
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
  }

  Future<void> addGoal(Goal goal) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);

      final response = await ref
          .read(restClientPersonProvider)
          .addGoal(tokenLastRequest!, goal);

      var updatedPerson = state.currentPerson?.copyWith(
        myGoals: [...state.currentPerson!.myGoals, response],
      );

      state = state.copyWith(currentPerson: updatedPerson);
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
  }

  Future<void> removeGoal(int id) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);

      final response = await ref
          .read(restClientPersonProvider)
          .removeGoal(tokenLastRequest!, id);

      var updatedPerson = state.currentPerson?.copyWith(
        myGoals: List<Goal>.from(state.currentPerson!.myGoals)
          ..removeWhere((goal) => goal.id == response.id),
      );

      state = state.copyWith(currentPerson: updatedPerson);
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
  }

  Future<void> saveWorkout(Workout workout) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);

      final response = await ref
          .read(restClientPersonProvider)
          .saveWorkout(tokenLastRequest!, workout);

      var updatedPerson = state.currentPerson?.copyWith(
        myWorkouts: [...state.currentPerson!.myWorkouts, response],
      );

      state = state.copyWith(currentPerson: updatedPerson);
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
  }

  Future<void> markWorkoutCompleted(int id) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);

      final response = await ref
          .read(restClientPersonProvider)
          .markWorkoutCompleted(tokenLastRequest!, id);

      final updatedPerson = state.currentPerson?.copyWith(
        myWorkouts: state.currentPerson!.myWorkouts.map((workout) {
          if (workout.id == response.id) {
            return workout.copyWith(completed: true);
          } else {
            return workout;
          }
        }).toList(),
      );

      state = state.copyWith(currentPerson: updatedPerson);
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
  }

  Future<void> followPerson(int id) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);

      final response = await ref
          .read(restClientPersonProvider)
          .followPerson(tokenLastRequest!, id);

      var updatedPerson = state.currentPerson?.copyWith(
        following: [...state.currentPerson!.following, response],
      );

      state = state.copyWith(currentPerson: updatedPerson);
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
  }

  Future<void> unfollowPerson(int id) async {
    try {
      state = SessionProviderState(
          currentPerson: state.currentPerson, loading: true);

      final response = await ref
          .read(restClientPersonProvider)
          .unfollowPerson(tokenLastRequest!, id);

      var updatedPerson = state.currentPerson?.copyWith(
        following: List<Person>.from(state.currentPerson!.following)
          ..removeWhere((person) => person.id == response.id),
      );

      state = state.copyWith(currentPerson: updatedPerson);
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
