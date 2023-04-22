import 'package:active_you/pages/splash/splash_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPageVM extends StateNotifier<SplashPageState> {
  final Ref ref;

  SplashPageVM(this.ref) : super(const SplashPageData()) {
    initAsync();
  }

  Future<void> initAsync() async {
    state = state.copyWith(loading: true);
    await Future.delayed(const Duration(seconds: 2));
    state = state.copyWith(loading: false);
    await Future.delayed(const Duration(milliseconds: 500));
    state = state.copyWith(endInit: true);
  }
}
