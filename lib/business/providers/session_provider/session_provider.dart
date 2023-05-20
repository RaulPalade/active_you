import 'package:active_you/business/models/auth/signin/sign_in.dart';
import 'package:active_you/business/models/person/person.dart';
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
