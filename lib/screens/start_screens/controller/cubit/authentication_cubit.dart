import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pixana_reloaded/screens/start_screens/model/pixana_user.dart';

enum AuthType { none, anonymous, google, apple, email }

class UserObject {
  PixanaUser? user;
  AuthType authType;
  bool isAuthenticated;

  /// Represtens the current PixanaUser with all his data.
  /// [user] can be NULL.
  UserObject({this.user, required this.authType, required this.isAuthenticated});

  // Save new fields and leave those who are null the same as before
  UserObject copyWith({PixanaUser? user, AuthType? authType, bool? isAuthenticated}) {
    return UserObject(
      user: user ?? this.user,
      authType: authType ?? this.authType,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
    );
  }
}

class AuthenticationCubit extends Cubit<UserObject> {
  final FirebaseAuth _firebaseAuth;

  AuthenticationCubit(this._firebaseAuth)
      : super(
          UserObject(authType: AuthType.none, isAuthenticated: false),
        ) {
    _firebaseAuth.authStateChanges().listen((user) {
      if (user != null) {
        AuthType authType = _determineAuthState(user);
        UserObject uObj = UserObject(
          authType: authType,
          isAuthenticated: true,
        );
        emit(uObj);
      } else {
        emit(
          UserObject(
            authType: AuthType.none,
            isAuthenticated: false,
          ),
        );
      }
    });
  }

  /// Changes authType to [none] and isAuthenticated to [false].
  void changePixanaUserLogInStatusToOut() {
    // PixanaUser is removed.
    emit(
      UserObject(
        authType: AuthType.none,
        isAuthenticated: false,
      ),
    );
  }

  void updateUserObject({required UserObject userObject}) {
    emit(userObject);
  }

  void checkAuthentication() {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      // TODO 1: Fetch userdata from backend OR local based on the uid.
      // 2: Check the authType of the current user.
      AuthType currentAuthType = _determineAuthState(user);
      // TODO 3: Emit the UserObject created for this user.
      emit(
        UserObject(
          authType: currentAuthType,
          isAuthenticated: true,
        ),
      );
    } else {
      emit(
        UserObject(
          authType: AuthType.none,
          isAuthenticated: false,
        ),
      );
    }
  }

  AuthType _determineAuthState(User user) {
    for (UserInfo userInfo in user.providerData) {
      switch (userInfo.providerId) {
        case 'google.com':
          return AuthType.google;
        case 'apple.com':
          return AuthType.apple;
        case 'password':
          return AuthType.email;
        case 'firebase':
          return AuthType.anonymous;
        default:
          continue;
      }
    }
    return AuthType.none;
  }
}
