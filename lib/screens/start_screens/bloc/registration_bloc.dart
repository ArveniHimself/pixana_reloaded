import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pixana_reloaded/screens/start_screens/bloc/registration_state.dart';
import 'package:pixana_reloaded/screens/start_screens/model/pixana_user.dart';

part 'registration_event.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationBlocState> {
  RegistrationBlocState regInputState;
  RegistrationBloc(this.regInputState) : super(RegistrationBlocState()) {
    on<RegistrationEvent>((event, emit) {
      if (event is SelectedAgeEvent) {
        regInputState = regInputState.copyWith(birthdayYear: event.birthdayYear);
        emit(regInputState);
      }
      if (event is SelectedGenderEvent) {
        regInputState = regInputState.copyWith(gender: event.gender);
        emit(regInputState);
      }
      if (event is SelectedUsernameEvent) {
        regInputState = regInputState.copyWith(username: event.username);
        debugPrint("Username: ${regInputState.username.toString()}");
        emit(regInputState);
      }
      if (event is SelectedProfilePicEvent) {
        regInputState = regInputState.copyWith(profilePic: event.profilePic);
        debugPrint("ProfilePic: ${regInputState.profilePic.toString()}");

        emit(regInputState);
      }

      if (event is AcceptedTermsEvent) {
        regInputState = regInputState.copyWith(termsAccepted: event.termsAccepted);
        debugPrint("Terms Accepted: ${regInputState.termsAccepted.toString()}");
        emit(regInputState);
      }
      if (event is ClickedLoginButton) {
        regInputState = regInputState.copyWith(clickedLoginButton: event.clickedLoginButton);
        if (regInputState.clickedLoginButton &&
            regInputState.termsAccepted &&
            regInputState.birthdayYear != null &&
            regInputState.gender != null) {
          debugPrint("READY!");
        } else {
          debugPrint("NOT READY!");
        }
        debugPrint("Clicked Login: ${regInputState.clickedLoginButton.toString()}");
        emit(regInputState);
      }
    });
  }
}
