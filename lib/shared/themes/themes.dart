import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PixanaTheme {
  // Lichtes Theme
  static final ThemeData light = ThemeData(
    primaryColor: Colors.teal[700],
    //Then use it with colorScheme.
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 16),
      // ... Weitere TextStyles
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    // ... Weitere Theme-Anpassungen
    // Hintergrund richtig weiß machen
    colorScheme: ColorScheme.fromSwatch().copyWith(
      background: Colors.white,
      primary: Colors.teal[700],
      secondary: Colors.yellow[700],
    ),
    // App Bar Title schwarz machen
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: Colors.teal[700],
      backgroundColor: Colors.white,
    ),
  );

  // Dunkles Theme
  static final ThemeData dark = ThemeData(
    primaryColor: Colors.teal[700],
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 18),

      // ... Weitere TextStyles
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(background: Colors.black),

    // ... Weitere Theme-Anpassungen
    // Hintergrund richtig tiefschwarz machen
    // App Bar Title weiß machen
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: Colors.teal[700],
      backgroundColor: Colors.black,
    ),
  );
}

SystemUiOverlayStyle configureSystemOverlayStyles(Brightness brightness) {
  if (brightness == Brightness.dark) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    debugPrint("[THEME]: Setting DARK theme.");
    return const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.light,
    );
  } else {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.teal[700],
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    debugPrint("[THEME]: Setting LIGHT theme.");
    return SystemUiOverlayStyle(
      statusBarColor: Colors.teal[700],
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    );
  }
}
