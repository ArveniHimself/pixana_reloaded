import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:pixana_reloaded/screens/start_screens/model/pixana_user.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Für die jsonEncode und jsonDecode Funktionen

class LocalStorageService {
  static Future<void> savePixanaUserLocal({required PixanaUser user}) async {
    final prefs = await SharedPreferences.getInstance();
    final userData = jsonEncode(user.toJson()); // convert user to json-string
    prefs.setString(user.uid, userData);
    debugPrint("[LSS]: Saving: ${userData.toString()}");
  }

  static Future<PixanaUser?> loadPixanaUserLocal({required String uid}) async {
    final prefs = await SharedPreferences.getInstance();
    final userDataStr = prefs.getString(uid);

    if (userDataStr != null && userDataStr.isNotEmpty) {
      final userData = jsonDecode(userDataStr); // convert json-string back to map
      debugPrint("[LSS]: Loading: ${userData.toString()}");
      return PixanaUser.fromJson(userData); // create new user from map
    }
    return null;
  }
}
