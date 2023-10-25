import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixana_reloaded/screens/profile_page/view/profile_page.dart';
import 'package:pixana_reloaded/screens/rating_page/cubit/theme_mode_cubit.dart';
import 'package:pixana_reloaded/screens/rating_page/view/rating_page.dart';
import 'package:pixana_reloaded/shared/global_services/screens_size_service.dart';

// Own files
import 'screens/user_tests_page/view/user_tests_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;
  int currentIndex = 1;

  // All 3 main pages - from left to right
  final List<Widget> _pixanaPages = [
    const ProfilePage(),
    const RatingPage(),
    const UserTestsPage(),
  ];

  @override
  void initState() {
    // Controller für PageView erstellen.
    _pageController = PageController(initialPage: 1, keepPage: true);

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //Creating the instance of the Singleton screenSizeService.
    screenSizeService.screenSizeServiceNew(mediaQuery: const MediaQueryData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Main body with PageView to display different pages
      body: PageView(
        controller: _pageController,
        children: _pixanaPages,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      // Bottom navigation bar to switch between pages
      bottomNavigationBar: BlocBuilder<ThemeModeCubit, PixanaThemeMode>(
        builder: (context, theme) {
          return NavigationBar(
            height: 40,
            elevation: 5,

            onDestinationSelected: (int index) {
              HapticFeedback.mediumImpact();
              setState(() {
                currentIndex = index;
              });
              _pageController.jumpToPage(currentIndex);
            },
            // Destination icons and labels for navigation bar
            destinations: [
              // AccountPage Icon
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: NavigationDestination(
                  selectedIcon: const Icon(
                    Icons.account_box_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                  icon: Icon(
                    Icons.account_box_outlined,
                    size: 25,
                    color: theme == PixanaThemeMode.light ? Colors.black : Colors.white,
                  ),
                  label: "",
                ),
              ),

              // RatingPage Icon
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: NavigationDestination(
                  selectedIcon: const Icon(
                    Icons.touch_app,
                    color: Colors.white,
                    size: 25,
                  ),
                  icon: Icon(Icons.touch_app_outlined,
                      size: 25,
                      color: theme == PixanaThemeMode.light ? Colors.black : Colors.white),
                  label: "",
                ),
              ),

              // UserTestsPage Icon
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: NavigationDestination(
                  selectedIcon: const Icon(
                    Icons.article_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                  icon: Icon(Icons.article_outlined,
                      size: 25,
                      color: theme == PixanaThemeMode.light ? Colors.black : Colors.white),
                  label: "",
                ),
              ),
            ],
            selectedIndex: currentIndex,
          );
        },
      ),
    );
  }
}
