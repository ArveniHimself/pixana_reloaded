import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pixana_reloaded/screens/start_screens/controller/auth_service.dart';
import 'package:pixana_reloaded/screens/start_screens/model/pixana_user.dart';

import '../../../../shared/global_services/local_storage_service.dart';
import 'registration_state.dart';

part 'registration_event.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationBlocState> {
  final AuthService authService = AuthService.instance;
  RegistrationBloc() : super(RegistrationBlocState()) {
    on<RegistrationEvent>((event, emit) async {
      if (event is SelectedAgeEvent) {
        emit(state.copyWith(birthdayYear: event.birthdayYear));
      }
      if (event is SelectedGenderEvent) {
        emit(state.copyWith(gender: event.gender));
      }
      if (event is SelectedUsernameEvent) {
        emit(state.copyWith(username: event.username));
      }
      if (event is SelectedProfilePicEvent) {
        emit(state.copyWith(profilePic: event.profilePic));
      }
      if (event is AcceptedTermsEvent) {
        emit(state.copyWith(termsAccepted: event.termsAccepted));
      }
      if (event is ClickedLoginButton) {
        emit(state.copyWith(clickedLoginButton: event.clickedLoginButton));
        if (state.clickedLoginButton &&
            state.termsAccepted &&
            state.birthdayYear != null &&
            state.gender != null) {
          emit(state.copyWith(loading: true));
          try {
            PixanaUser px = await authService.signInAnonymously(
                //Already checked that fields are not null
                birthdayYear: state.birthdayYear!,
                gender: state.gender!);
            await LocalStorageService.savePixanaUserLocal(user: px);
          } catch (e) {
            debugPrint("Problem while logging in: ${e.toString()}");
          }
          debugPrint("Successfully logged in with bloc");
          emit(state.copyWith(loading: false, readyToNavigate: true));
        } else {
          debugPrint("NOT READY!");
        }
        debugPrint("Clicked Login: ${state.clickedLoginButton.toString()}");
        emit(state);
      }
    });
  }
}
