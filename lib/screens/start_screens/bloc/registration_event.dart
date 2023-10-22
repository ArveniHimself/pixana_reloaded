part of 'registration_bloc.dart';

@immutable
sealed class RegistrationEvent {}

class SelectedAgeEvent extends RegistrationEvent {
  final int birthdayYear;
  SelectedAgeEvent({required this.birthdayYear});
}

class SelectedGenderEvent extends RegistrationEvent {
  final Gender gender;
  SelectedGenderEvent({required this.gender});
}

class SelectedUsernameEvent extends RegistrationEvent {
  final String username;
  SelectedUsernameEvent({required this.username});
}

class SelectedProfilePicEvent extends RegistrationEvent {
  final String profilePic;
  SelectedProfilePicEvent({required this.profilePic});
}

class AcceptedTermsEvent extends RegistrationEvent {
  final bool termsAccepted;
  AcceptedTermsEvent({required this.termsAccepted});
}

class ClickedLoginButton extends RegistrationEvent {
  final bool clickedLoginButton;
  ClickedLoginButton({required this.clickedLoginButton});
}
