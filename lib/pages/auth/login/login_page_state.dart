import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_state.freezed.dart';

@freezed
class LoginPageState with _$LoginPageState {
  const factory LoginPageState({
    @Default("") String email,
    @Default("") String password,
    @Default(true) bool passwordHidden,
  }) = LoginPageData;
}
