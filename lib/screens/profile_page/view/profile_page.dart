import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixana_reloaded/screens/rating_page/cubit/theme_mode_cubit.dart';
import 'package:pixana_reloaded/screens/user_tests_page/view/placeholder_testcard.dart';
import 'package:pixana_reloaded/shared/global_services/screens_size_service.dart';

import '../../start_screens/controller/auth_service.dart';
import '../../start_screens/controller/cubit/authentication_cubit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

// AutomaticKeepAliveClientMixing is needed for keeping the state of the page even after the user swipes away
class _ProfilePageState extends State<ProfilePage> with AutomaticKeepAliveClientMixin {
  // Needed for keeping the state of the page even after user swipes away
  @override
  bool get wantKeepAlive => true;

  late ScreenSize screenSize;

  @override
  void didChangeDependencies() {
    // Using the singleton screenSizeService to determine the screenSize of the current device.
    screenSize = screenSizeService.screenSizeServiceNew(mediaQuery: const MediaQueryData());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(screenSize.toString());
    // Needed for keeping the state of the page even after user swipes aways
    super.build(context);

    // Get the current user and store him
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).primaryColor,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: BlocProvider.of<ThemeModeCubit>(context).state == PixanaThemeMode.light
                      ? Colors.white
                      : Colors.black,
                ),
                onPressed: () {
                  if (Platform.isAndroid) {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.black.withOpacity(0.75),
                            ),
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white.withOpacity(0.8),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      onPressed: () async {
                                        await Future.delayed(const Duration(seconds: 1), () {
                                          Navigator.pop(context);
                                          debugPrint("Anonym logout");
                                          AuthService.instance.signOutAnonymously(context: context);
                                          debugPrint("Anonym logout done");
                                        });
                                      },
                                      child: const Text(
                                        'Yes, log out.',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white.withOpacity(0.8),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      onPressed: () async {
                                        await Future.delayed(const Duration(seconds: 1), () {
                                          Navigator.pop(context);
                                          // Stay logged in logic here
                                        });
                                      },
                                      child: const Text(
                                        'No, stay logged in.',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      backgroundColor: Colors.transparent, // This makes the background transparent
                    );
                  } else {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext context) => CupertinoActionSheet(
                        actions: <Widget>[
                          Container(
                            color: Colors.white.withOpacity(0.3),
                            child: CupertinoActionSheetAction(
                              child: const Text(
                                "Yes, log out.",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () async {
                                await Future.delayed(const Duration(seconds: 1), () {
                                  Navigator.pop(context);
                                  debugPrint("Anonym logout");
                                  AuthService.instance.signOutAnonymously(context: context);
                                  debugPrint("Anonym logout done");
                                });
                              },
                            ),
                          ),
                          Container(
                            color: Colors.white.withOpacity(0.3),
                            child: CupertinoActionSheetAction(
                              child: const Text(
                                "No, stay logged in.",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () async {
                                await Future.delayed(const Duration(seconds: 1), () {
                                  Navigator.pop(context);
                                  // Stay logged in logic here
                                });
                              },
                            ),
                          ),
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          child: const Text("Cancel"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            centerTitle: true,
            pinned: true,
            expandedHeight: 100,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1.15,
              titlePadding: const EdgeInsetsDirectional.only(start: 0, bottom: 16),
              centerTitle: true,
              title: BlocBuilder<AuthenticationCubit, UserObject>(
                builder: (context, uObj) {
                  return Text(
                    // If user is null, whole statement is null and user is told to restart the App."
                    uObj.user?.uid.toString() ?? "Error. Restart the app.",
                    style: TextStyle(
                      color: BlocProvider.of<ThemeModeCubit>(context).state == PixanaThemeMode.light
                          ? Colors.white
                          : Colors.black,
                    ),
                  );
                },
              ),
            ),
          ),

          // The averages per category (the header under the title).
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverHeaderDelegate(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    height: 60,
                    child: Column(
                      children: [
                        Icon(
                          Icons.bar_chart,
                          color: Colors.white,
                        ),
                        Text(
                          "Dating",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 60,
                    child: Column(
                      children: [
                        Icon(
                          Icons.bar_chart,
                          color: Colors.white,
                        ),
                        Text(
                          "Outfit",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 60,
                    child: Column(
                      children: [
                        Icon(
                          Icons.bar_chart,
                          color: Colors.white,
                        ),
                        Text(
                          "Social Media",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //  The Testcards with the test results.
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 0),
                child: PlaceholderTestcard(screenSize: screenSize),
              );
            }, childCount: 100),
          ),
        ],
      ),
    );
  }
}

class _SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _SliverHeaderDelegate({required this.child});

  @override
  double get minExtent => 60;

  @override
  double get maxExtent => 60;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox.expand(child: child),
        ));
  }

  @override
  bool shouldRebuild(_SliverHeaderDelegate oldDelegate) {
    return false;
  }
}
