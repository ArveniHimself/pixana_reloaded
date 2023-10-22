import 'dart:typed_data';

/// Enumeration of genders.
enum Gender { male, female, divers }

/// Enumeration of credibility levels.
enum Credibility { unknown, low, medium, high }

/// Function to serialize an enum.
String enumToString(Object e) => e.toString().split('.').last;

/// Function to deserialize an enum.
T enumFromString<T>(String key, List<T> values) =>
    values.firstWhere((v) => key == enumToString(v as String),
        orElse: () => throw ArgumentError('Invalid enum value.'));

/// Represents a registered user in the Pixana system.
class PixanaUser {
  final String uid;
  final Gender gender;
  final String userName;
  final String email;
  // TODO age or birthday?
  final int birthdayYear;
  String profilePicId;
  bool isVerified;
  int coins;
  bool watchedTutorial;
  Credibility credibility;

  /// Creates an instance of [PixanaUser].
  ///
  /// Throws an [ArgumentError] if [coins] is negative, [birthdayYear] is not realistic,
  /// or [email] is not valid.
  PixanaUser({
    required this.uid,
    required this.gender,
    required this.userName,
    required this.email,
    required this.birthdayYear,
    required this.isVerified,
    required this.coins,
    required this.watchedTutorial,
    required this.credibility,
    required this.profilePicId,
  }) {
    // the '!' operator assures that the value is not null.
    if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email)) {
      throw ArgumentError('Invalid email format');
    }
    if (birthdayYear < 1900 || birthdayYear > DateTime.now().year) {
      throw ArgumentError('Invalid birthday year');
    }
  }

  /// Copy constructor that updates only the needed fields
  PixanaUser copyWith({
    String? uid,
    Gender? gender,
    String? userName,
    String? email,
    int? birthdayYear,
    bool? isVerified,
    int? coins,
    bool? watchedTutorial,
    Credibility? credibility,
    String? profilePicId,
  }) {
    return PixanaUser(
        uid: uid ?? this.uid,
        gender: gender ?? this.gender,
        userName: userName ?? this.userName,
        email: email ?? this.email,
        birthdayYear: birthdayYear ?? this.birthdayYear,
        isVerified: isVerified ?? this.isVerified,
        coins: coins ?? this.coins,
        watchedTutorial: watchedTutorial ?? this.watchedTutorial,
        credibility: credibility ?? this.credibility,
        profilePicId: profilePicId ?? this.profilePicId);
  }

  toJson() => {
        'uid': uid,
        'email': email,
        'gender': enumToString(gender),
        'birthday': birthdayYear,
        'credibility': enumToString(credibility),
        'coins': coins,
        'isVerified': isVerified,
        'watchedTutorial': watchedTutorial,
      };

  factory PixanaUser.fromJson(dynamic json) {
    bool verified = (json['isVerified'] == "0" || json['isVerified'] == false) ? false : true;

    // Return user from json
    return PixanaUser(
      uid: json['uid'] as String,
      userName: json['username'] as String,
      email: json['email'] as String,
      profilePicId: json['profilePicId'] as String,
      gender: enumFromString(json['gender'], Gender.values),
      credibility: enumFromString(json['credibility'], Credibility.values),
      birthdayYear: json['birthdayYear'] as int,
      coins: json['coins'] as int,
      isVerified: verified,
      watchedTutorial: json['watchedTutorial'] as bool,
    );
  }
}
