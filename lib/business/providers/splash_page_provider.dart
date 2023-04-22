import 'package:active_you/pages/splash/splash_page_state.dart';
import 'package:active_you/pages/splash/splash_page_vm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashPageProvider =
    StateNotifierProvider.autoDispose<SplashPageVM, SplashPageState>((ref) {
  return SplashPageVM(ref);
});

final splashPageLoadingProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(splashPageProvider).loading;
});
