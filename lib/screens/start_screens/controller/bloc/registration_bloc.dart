import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pixana_reloaded/screens/start_screens/controller/auth_service.dart';
import 'package:pixana_reloaded/screens/start_screens/model/pixana_user.dart';

import '../../../../shared/global_services/local_storage_service.dart';
import 'registration_state.dart';

part 'registration_event.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationBlocState> {
  final AuthService authService = AuthService.instance;

  // Constructor initializes the bloc with a default state.
  RegistrationBloc() : super(RegistrationBlocState()) {
    on<RegistrationEvent>((event, emit) async {
      // Handling the case when the user selects their age.
      if (event is SelectedAgeEvent) {
        emit(state.copyWith(birthdayYear: event.birthdayYear));
      }
      // Handling the case when the user selects their gender.
      if (event is SelectedGenderEvent) {
        emit(state.copyWith(gender: event.gender));
      }
      // Handling the case when the user inputs their username.
      if (event is SelectedUsernameEvent) {
        emit(state.copyWith(username: event.username));
      }
      // Handling the case when the user selects their profile picture.
      if (event is SelectedProfilePicEvent) {
        emit(state.copyWith(profilePic: event.profilePic));
      }
      // Handling the case when the user accepts the terms and conditions.
      if (event is AcceptedTermsEvent) {
        emit(state.copyWith(termsAccepted: event.termsAccepted));
      }
      // Handling the case when the user clicks the login button.
      if (event is ClickedLoginButton) {
        emit(state.copyWith(clickedLoginButton: event.clickedLoginButton));

        // Checking if all required fields are filled and terms are accepted.
        if (state.clickedLoginButton &&
            state.termsAccepted &&
            state.birthdayYear != null &&
            state.gender != null) {
          emit(state.copyWith(loading: true)); // Setting the loading state to true.

          try {
            // Attempting to sign in anonymously with the provided data.
            PixanaUser px = await authService.signInAnonymously(
                // Fields are already checked for null.
                birthdayYear: state.birthdayYear!,
                gender: state.gender!);
            // Saving the user data locally after successful sign in.
            await LocalStorageService.savePixanaUserLocal(user: px);
          } catch (e) {
            // Logging any error that occurs during the sign in process.
            debugPrint("Problem while logging in: ${e.toString()}");
          }
          // Successfully logged in and ready to navigate.
          debugPrint("Successfully logged in with bloc");
          emit(state.copyWith(loading: false, readyToNavigate: true));
        } else {
          // Logging a message if not all required fields are filled.
          debugPrint("NOT READY!");
        }
        // Logging the current state of the clickedLoginButton.
        debugPrint("Clicked Login: ${state.clickedLoginButton.toString()}");
        emit(state);
      }
    });
  }
}
