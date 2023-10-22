import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixana_reloaded/screens/rating_page/bloc/rating_page_bloc.dart';
import 'package:pixana_reloaded/screens/rating_page/cubit/theme_mode_cubit.dart';
import 'package:pixana_reloaded/screens/rating_page/view/rating_sections.dart/comment_parts/comment_widget.dart';
import 'package:pixana_reloaded/screens/rating_page/view/rating_sections.dart/rating_image.dart';
import 'package:pixana_reloaded/screens/rating_page/view/rating_sections.dart/rating_actions_buttons.dart';
import 'package:pixana_reloaded/screens/rating_page/view/rating_sections.dart/rating_widget.dart';
import 'package:pixana_reloaded/shared/services/screens_size_service.dart';
import 'package:pixana_reloaded/shared/widgets/buttons/animated_token_button.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

// AutomaticKeepAliveClientMixing is needed for keeping the state of the page even after the user swipes away
class _RatingPageState extends State<RatingPage> with AutomaticKeepAliveClientMixin {
  // Needed for keeping the state of the page even after user swipes away
  @override
  bool get wantKeepAlive => true;

  // Calculating aspectRatio for displaying the picture
  late double aspectRatio;
  late ScreenSize screenSize;

  @override
  void didChangeDependencies() {
    // Using the singleton screenSizeService to determine the screenSize of the current device.
    screenSize = screenSizeService.screenSizeServiceNew(mediaQuery: const MediaQueryData());

    // Using the screenSize to determine the optimal aspectRation for the image on the screen.
    aspectRatio = getImageAspectRatio(screenSize);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // Needed for keeping the state of the page even after user swipes aways
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        // Leading widget on the app bar to display tokens needed for tests
        leadingWidth: MediaQuery.of(context).size.width * 0.35,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          // This widget shows the current amount of tokens needed to start new tests
          child: AnimatedTokenButton(
            foregroundWidgetColor:
                BlocProvider.of<ThemeModeCubit>(context).state == PixanaThemeMode.light
                    ? Colors.white
                    : Colors.black,
          ),
        ),
        elevation: 0,
        // Action icons on the app bar
        actions: [
          // IconButton to toggle between Dark / Light Mode.
          IconButton(
            icon: BlocProvider.of<ThemeModeCubit>(context).state == PixanaThemeMode.light
                ? Icon(
                    Icons.nightlight,
                    color: BlocProvider.of<ThemeModeCubit>(context).state == PixanaThemeMode.light
                        ? Colors.white
                        : Colors.black,
                  )
                : Icon(
                    Icons.sunny,
                    color: BlocProvider.of<ThemeModeCubit>(context).state == PixanaThemeMode.light
                        ? Colors.white
                        : Colors.black,
                  ),
            onPressed: () {
              BlocProvider.of<ThemeModeCubit>(context).toggleMode();
            },
          ),

          // IconButton to start the Tutorial.
          IconButton(
            icon: Icon(
              Icons.question_mark,
              color: BlocProvider.of<ThemeModeCubit>(context).state == PixanaThemeMode.light
                  ? Colors.white
                  : Colors.black,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 15)
        ],
      ),
      body: Column(
        children: [
          // Display the current picture to be rated
          RatingImage(aspectRatio: aspectRatio),
          const SizedBox(
            height: 5,
          ),

          // Display the rating action buttons
          const RatingActionButtons(),
          // Display the rating widget (including rating & comment parts)
          // const RatingWidget(),
          BlocBuilder<RatingPageBloc, RatingPageState>(
            builder: (context, state) {
              if (state is RatingViewState) {
                return const RatingWidget();
              } else if (state is CommentViewState) {
                return const Expanded(child: CommentWidget());
              } else {
                return ErrorWidget(Exception("Error"));
              }
            },
          ),
        ],
      ),
    );
  }
}
