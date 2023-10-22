import 'package:pixana_reloaded/screens/start_screens/model/pixana_user.dart';

class RegistrationBlocState {
  int? birthdayYear;
  Gender? gender;
  String? username;
  String? profilePic;
  bool clickedLoginButton;
  bool termsAccepted;

  RegistrationBlocState({
    this.birthdayYear,
    this.gender,
    this.username,
    this.profilePic,
    this.clickedLoginButton = false,
    this.termsAccepted = false,
  });

  RegistrationBlocState copyWith({
    int? birthdayYear,
    Gender? gender,
    bool? termsAccepted,
    String? username,
    String? profilePic,
    bool? clickedLoginButton,
  }) {
    return RegistrationBlocState(
      birthdayYear: birthdayYear ?? this.birthdayYear,
      gender: gender ?? this.gender,
      username: username ?? this.username,
      profilePic: profilePic ?? this.profilePic,
      termsAccepted: termsAccepted ?? this.termsAccepted,
      clickedLoginButton: clickedLoginButton ?? this.clickedLoginButton,
    );
  }
}
