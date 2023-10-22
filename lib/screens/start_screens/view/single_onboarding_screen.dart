import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleOnboardingScreen extends StatelessWidget {
  ///Represents a single onboarding screen.
  ///Contains the image, a title and a text.
  ///Contains translations with (.tr) from getX
  const SingleOnboardingScreen({
    super.key,
    required this.assetPath,
    required this.onboardingScreenTitle,
    required this.onboardingScreenText,
  });

  final String assetPath;
  final String onboardingScreenTitle;
  final String onboardingScreenText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        children: <Widget>[
          const Spacer(),
          AspectRatio(
            aspectRatio: 4 / 5,
            child: Center(
              child: Image(
                image: AssetImage(assetPath),
              ),
            ),
          ),
          const Spacer(),
          Text(
            onboardingScreenTitle.tr,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              height: 1.5,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Text(
            onboardingScreenText.tr,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
