import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/api_provider.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/create_workout/create_workout_state.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class CreateWorkoutVM extends StateNotifier<CreateWorkoutState> {
  final Ref ref;

  CreateWorkoutVM(this.ref) : super(const CreateWorkoutState());

  void setWorkoutName(String name) {
    state = state.copyWith(name: name);
  }

  void setWorkoutType(String type) {
    state = state.copyWith(type: type);
  }

  Future<bool> createWorkout(String name, String type) async {
    try {
      final currentUser = ref.watch(currentPersonProvider);
      Workout workout = Workout(
        id: null,
        createdBy: currentUser!.id,
        name: name,
        type: type,
        exercises: null,
      );

      final response =
          ref.watch(restClientPersonProvider).createWorkout(workout);

    

      return true;
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
    state = CreateWorkoutState(
      name: state.name,
      type: state.type,
      errorApiCall: errorType,
    );
  }
}
