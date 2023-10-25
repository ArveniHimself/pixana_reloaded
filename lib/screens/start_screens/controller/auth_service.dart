import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixana_reloaded/screens/start_screens/model/pixana_user.dart';
import 'package:provider/provider.dart';

import 'cubit/authentication_cubit.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// Private Constructor for singleton pattern
  AuthService._privateConstructor();

  /// static instance of AuthService
  static final AuthService instance = AuthService._privateConstructor();

  //------------------------------------------------------------------------------------------------
  /// User is logged in anonymously (no email and password needed)
  /// The PixanaUser will be made accessible through the whole app.
  Future<PixanaUser> signInAnonymously({
    required int birthdayYear,
    required Gender gender,
  }) async {
    String uid = "no uid";

    try {
      debugPrint("[AUTHSERVICE]: Logging in...");
      UserCredential userCredential = await _auth.signInAnonymously();
      User? user = userCredential.user;
      if (user != null) {
        debugPrint("[AUTHSERVICE]: User logged in in Firebase");
        uid = user.uid;
      } else {
        debugPrint('[AUTHSERVICE]: No user found');
      }
    } on FirebaseAuthException catch (e) {
      debugPrint('[AUTHSERVICE]: Failed to sign in anonymously: ${e.message}');
    }
    return PixanaUser(
      userName: "Broken Guest",
      email: "anonymous@pixana.com",
      profilePicId: "No profile picture.",
      uid: uid,
      gender: gender,
      coins: 0,
      birthdayYear: birthdayYear,
      watchedTutorial: false,
      isVerified: false,
      credibility: Credibility.unknown,
    );
  }

  /// User is logged out anonymously (no email and password needed)
  /// The AnonymPixanaUser will beremoved from the UserCubit.
  Future<void> signOutAnonymously({required BuildContext context}) async {
    final userObject = context.read<AuthenticationCubit>();
    userObject.changePixanaUserLogInStatusToOut();
    try {
      await _auth.signOut();
      debugPrint("[AUTHSERVICE]: User logged Out");

      Future.delayed(const Duration(seconds: 1));
    } catch (e) {
      debugPrint('[AUTHSERVICE]: Error signing out: $e');
    }
  }

  //------------------------------------------------------------------------------------------------
  void signInWithGoogle({required BuildContext context}) {}

  void signOutFromGoogle({required BuildContext context}) {
    final userObject = context.read<AuthenticationCubit>();
    userObject.changePixanaUserLogInStatusToOut();
  }

  //------------------------------------------------------------------------------------------------
  void signInWithApple({required BuildContext context}) {}

  void signOutFromApple({required BuildContext context}) {
    final userObject = context.read<AuthenticationCubit>();
    userObject.changePixanaUserLogInStatusToOut();
  }
  //------------------------------------------------------------------------------------------------

  void createAnonymPixanaUser() {
    debugPrint("");
  }

  void createPixanaUser() {
    debugPrint("");
  }
}
