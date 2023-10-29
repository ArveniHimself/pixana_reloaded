import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:pixana_reloaded/screens/start_screens/view/single_onboarding_screen.dart';

import 'sign_up/guest_sign_up.dart';

class Onboarding extends StatefulWidget {
  /// The onboarding. Never been seen again once a user is logged in or created an account.
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final int _numPages = 6;
  late PageController _bigPageController;
  int _currentpage = 0;

  //google loading
  bool clickedGoogle = false;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (var i = 0; i < _numPages; i++) {
      list.add(i == _currentpage
          ? _indicator(true, _currentpage == 5 ? true : false)
          : _indicator(false, _currentpage == 5 ? true : false));
    }

    return list;
  }

  Widget _indicator(bool isActive, bool invisibleIndicator) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: invisibleIndicator
            ? Colors.transparent
            : isActive
                ? Colors.teal[100]
                : Colors.teal[900],
        border: Border.all(color: invisibleIndicator ? Colors.transparent : Colors.teal),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
    );
  }

  @override
  void initState() {
    _currentpage = 0;
    _bigPageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // Always call super.dispose() first
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.teal,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                // Gradient as a background for the onboarding look.
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [
                      0.25,
                      0.5,
                      0.75,
                      0.95,
                    ],
                    colors: [
                      Colors.teal[900]!,
                      Colors.teal[800]!,
                      Colors.teal[700]!,
                      Colors.teal,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: PageView(
                          onPageChanged: (int page) {
                            setState(() {
                              _currentpage = page;
                            });
                          },
                          physics: const ClampingScrollPhysics(),
                          controller: _bigPageController,
                          children: <Widget>[
                            // Page 0 - The first page a new user sees
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                              child: Column(
                                children: <Widget>[
                                  const Spacer(),
                                  const AspectRatio(
                                    aspectRatio: 4 / 2.45,
                                    child: Center(
                                      child: Image(
                                        image: AssetImage('assets/final_icon_trans.png'),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    "Pixana",
                                    style: TextStyle(
                                        letterSpacing: 2,
                                        color: Colors.white,
                                        fontSize: 48,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "PhotoTestingApp".tr,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "OnboardingAction".tr,
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
                            ),
                            // Page 1
                            const SingleOnboardingScreen(
                              assetPath: 'assets/Screen_1.png',
                              onboardingScreenTitle: 'OnboardingScreen1Title',
                              onboardingScreenText: 'OnboardingScreen1Text',
                            ),
                            // Page 2
                            const SingleOnboardingScreen(
                              assetPath: 'assets/Screen_2.png',
                              onboardingScreenTitle: 'OnboardingScreen2Title',
                              onboardingScreenText: 'OnboardingScreen2Text',
                            ),
                            // Page 3
                            const SingleOnboardingScreen(
                              assetPath: 'assets/Screen_2.png',
                              onboardingScreenTitle: 'OnboardingScreen3Title',
                              onboardingScreenText: 'OnboardingScreen3Text',
                            ),
                            // Page 4
                            const SingleOnboardingScreen(
                              assetPath: 'assets/Screen_2.png',
                              onboardingScreenTitle: 'OnboardingScreen4Title',
                              onboardingScreenText: 'OnboardingScreen4Text',
                            ),
                            // Page 5
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                              child: Column(
                                children: <Widget>[
                                  // pixana logo
                                  const AspectRatio(
                                    aspectRatio: 4 / 1.5,
                                    child: Center(
                                      child: Image(
                                        image: AssetImage('assets/final_icon_trans.png'),
                                      ),
                                    ),
                                  ),
                                  //pixana title
                                  const Text(
                                    "Pixana",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 42,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  //pixana slogan
                                  Text(
                                    'OnboardingScreen1Text'.tr,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  const Spacer(),

                                  RichText(
                                    text: TextSpan(
                                      style: const TextStyle(fontSize: 12, color: Colors.black),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "guestInvitation".tr,
                                            style: const TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  //guest button
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black),
                                    child: SizedBox(
                                      width: constraints.maxWidth * 0.55,
                                      height: 45,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.login_outlined,
                                            color: Colors.black,
                                          ),
                                          const Spacer(),
                                          RichText(
                                            text: TextSpan(
                                              style: const TextStyle(color: Colors.black),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: "guestLogin".tr,
                                                    style: const TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                    )),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                        ],
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const GuestSignUp(),
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),

                                  //join text
                                  RichText(
                                    text: TextSpan(
                                      style: const TextStyle(fontSize: 12, color: Colors.black),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "join".tr,
                                            style: const TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),

                                  // Google Login
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Colors.white,
                                        side: const BorderSide(color: Colors.white)),
                                    child: SizedBox(
                                      width: constraints.maxWidth * 0.55,
                                      height: 45,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: clickedGoogle
                                            ? [
                                                const Spacer(),
                                                Text(
                                                  "loading".tr,
                                                  style: const TextStyle(color: Colors.black),
                                                ),
                                                const Spacer(),
                                                const SpinKitDualRing(
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                const Spacer(),
                                              ]
                                            : [
                                                SizedBox(
                                                  height: 32,
                                                  width: 32,
                                                  child: Image.asset("assets/google_logo.png"),
                                                ),
                                                const Spacer(),
                                                RichText(
                                                  text: TextSpan(
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w500),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: "continueWithGoogle".tr,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Spacer(),
                                              ],
                                      ),
                                    ),
                                    onPressed: () async {
                                      // TODO
                                      // debugPrint("Anonym logout");
                                      // AuthService().signOutAnonymously(context: context);
                                      // debugPrint("Anonym logout done");
                                    },
                                  ),

                                  const SizedBox(
                                    height: 10,
                                  ),

                                  // Apple Login
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    child: SizedBox(
                                      width: constraints.maxWidth * 0.55,
                                      height: 45,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 32,
                                            width: 32,
                                            child: Image.asset("assets/apple_logo.png"),
                                          ),
                                          const Spacer(),
                                          RichText(
                                            text: TextSpan(
                                              style: const TextStyle(
                                                  color: Colors.black, fontWeight: FontWeight.w500),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: "continueWithApple".tr,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                        ],
                                      ),
                                    ),
                                    onPressed: () async {},
                                  ),

                                  const Spacer(),

                                  //version
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: const TextStyle(color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "App Version 1.0".tr,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //indicators
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildPageIndicator(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // Cool "Continue" button
                      _currentpage < 5
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 300,
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      side: const BorderSide(color: Colors.black),
                                      elevation: 0,
                                      backgroundColor: Colors
                                          .white, // This changes the background color of the button
                                      foregroundColor: Colors
                                          .black, // This changes the color of the text and icon
                                    ),
                                    onPressed: () {
                                      if (_currentpage < 5) {
                                        setState(() {
                                          _currentpage++;
                                          _bigPageController.animateToPage(_currentpage,
                                              duration: const Duration(milliseconds: 400),
                                              curve: Curves.linear);
                                        });
                                      }
                                    },
                                    child: _currentpage < 1
                                        ? const Text("Get Started")
                                        : const Text("Continue"),
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox(
                              height: 50,
                            ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
