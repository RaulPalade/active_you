import 'package:active_you/business/providers/api_provider.dart';
import 'package:active_you/pages/explore_workouts/explore_workouts_state.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ExploreWorkoutsVM extends StateNotifier<ExploreWorkoutsState> {
  final Ref ref;
  CancelToken? tokenLastRequest;

  ExploreWorkoutsVM(this.ref) : super(const ExploreWorkoutsState()) {
    fetchWorkouts();
  }

  Future<void> fetchWorkouts() async {
    try {
      state = const ExploreWorkoutsState(workouts: [], loading: true);

      tokenLastRequest = CancelToken();
      final workoutResponse = await ref
          .read(restClientWorkoutProvider)
          .getWorkouts(tokenLastRequest!);

      state = ExploreWorkoutsState(workouts: workoutResponse, loading: false);
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
    tokenLastRequest = null;
  }

  Future<void> _catchErrorOnFetch(Object err) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    ErrorApiCall errorType = ErrorApiCall.generic;
    if (connectivityResult == ConnectivityResult.none) {
      errorType = ErrorApiCall.noConnection;
    }
    state =
        ExploreWorkoutsState(workouts: state.workouts, errorApiCall: errorType);
  }
}
