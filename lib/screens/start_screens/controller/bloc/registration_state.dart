import 'package:pixana_reloaded/screens/start_screens/model/pixana_user.dart';

class RegistrationBlocState {
  int? birthdayYear; // Represents the currently selected birthdayYear by the user.
  Gender? gender; // Represents the currently selected gender by the user.
  String? username; // (Not for anonym) Represents the currently selected username by the user.
  String?
      profilePic; // (Not for anonym) Represents the currently selected profilePic-String by the user.
  bool clickedLoginButton; // User clicked on the submit button - unsure if all data is provided.
  bool termsAccepted; // The user has accepted the terms & conditions of Pixana.
  bool loading; // All data has been submitted and user is being registered - loading status.
  bool readyToNavigate; // User was registered sucessfully and the user can be navigated to Home.

  RegistrationBlocState({
    this.birthdayYear,
    this.gender,
    this.username,
    this.profilePic,
    this.clickedLoginButton = false,
    this.termsAccepted = false,
    this.loading = false,
    this.readyToNavigate = false,
  });

  RegistrationBlocState copyWith({
    int? birthdayYear,
    Gender? gender,
    bool? termsAccepted,
    String? username,
    String? profilePic,
    bool? clickedLoginButton,
    bool? loading,
    bool? readyToNavigate,
  }) {
    return RegistrationBlocState(
      birthdayYear: birthdayYear ?? this.birthdayYear,
      gender: gender ?? this.gender,
      username: username ?? this.username,
      profilePic: profilePic ?? this.profilePic,
      termsAccepted: termsAccepted ?? this.termsAccepted,
      clickedLoginButton: clickedLoginButton ?? this.clickedLoginButton,
      loading: loading ?? this.loading,
      readyToNavigate: readyToNavigate ?? this.readyToNavigate,
    );
  }
}
