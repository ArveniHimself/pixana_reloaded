import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixana_reloaded/screens/rating_page/cubit/theme_mode_cubit.dart';
import 'package:pixana_reloaded/screens/user_tests_page/view/placeholder_testcard.dart';
import 'package:pixana_reloaded/shared/services/screens_size_service.dart';
import 'package:pixana_reloaded/shared/widgets/buttons/animated_token_button.dart';

class UserTestsPage extends StatefulWidget {
  const UserTestsPage({super.key});

  @override
  State<UserTestsPage> createState() => _UserTestsPageState();
}

class _UserTestsPageState extends State<UserTestsPage> {
  late ScreenSize screenSize;

  @override
  void didChangeDependencies() {
    // Using the singleton screenSizeService to determine the screenSize of the current device.
    screenSize = screenSizeService.screenSizeServiceNew(mediaQuery: const MediaQueryData());

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * 0.35,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          // This widget shows the current amount of tokens needed to start new tests
          child: AnimatedTokenButton(
            foregroundWidgetColor:
                BlocProvider.of<ThemeModeCubit>(context).state == PixanaThemeMode.light
                    ? Colors.black
                    : Colors.white,
          ),
        ),
        title: const Text("My Tests"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_alt_outlined),
          ),
        ],
      ),
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, snap) {
            return PlaceholderTestcard(screenSize: screenSize);
          }),
    );
  }
}
