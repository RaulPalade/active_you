import 'package:active_you/pages/intro/onboarding_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingVM extends StateNotifier<OnBoardingState> {
  final Ref ref;

  OnBoardingVM(this.ref) : super(const OnBoardingState());

  void setPageNumber(int pageNumber) {
    state = state.copyWith(pageNumber: pageNumber);
  }
}
