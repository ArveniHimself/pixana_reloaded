// // device_screen_type.dart

// import 'package:flutter/material.dart';

// // Enumeration to represent different device screen types
// enum ScreenSize { smallScreen, normalScreen, largeScreen }

// // Function to determine the device type based on the screen width
// // DeviceScreenSize getDeviceType(MediaQueryData mediaQuery) {
// //   final double aspectRatioCustom = mediaQuery.size.height / mediaQuery.size.width;
// // }

// // // Function to get the image aspect ratio based on the device type
// double getImageAspectRatio(ScreenSize screenSize) {
//   switch (screenSize) {
//     case ScreenSize.smallScreen:
//       debugPrint("[ScreenSize] Small");
//       return 6 / 5; // Aspect ratio for small devices
//     case ScreenSize.normalScreen:
//       debugPrint("[ScreenSize] Normal");
//       return 15 / 14; // Aspect ratio for normal devices
//     case ScreenSize.largeScreen:
//       debugPrint("[ScreenSize] Large");
//       return 19 / 20; // Aspect ratio for large devices
//     default:
//       throw Exception('Unknown device type');
//   }
// }

// class ScreenSizeSingleton {
//   ScreenSize? _screenSize;

//   ScreenSize screenSizeSingleton({required MediaQueryData mediaQuery}) {
//     if (_screenSize == null) {
//       final double aspectRatioCustom = mediaQuery.size.height / mediaQuery.size.width;
//       if (aspectRatioCustom < 1.85) {
//         return ScreenSize.smallScreen;
//       } else if (aspectRatioCustom < 2) {
//         return ScreenSize.normalScreen;
//       } else {
//         return ScreenSize.largeScreen;
//       }
//     }
//     return _screenSize!;
//   }
// }

// final screenSizeService = ScreenSizeSingleton();
