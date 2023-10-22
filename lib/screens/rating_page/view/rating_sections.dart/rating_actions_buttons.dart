import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixana_reloaded/screens/rating_page/bloc/rating_page_bloc.dart';
import 'package:pixana_reloaded/screens/rating_page/cubit/theme_mode_cubit.dart';

// A stateful widget for displaying rating action buttons.
class RatingActionButtons extends StatefulWidget {
  const RatingActionButtons({Key? key}) : super(key: key);

  @override
  State<RatingActionButtons> createState() => _RatingActionButtonsState();
}

class _RatingActionButtonsState extends State<RatingActionButtons> {
  @override
  Widget build(BuildContext context) {
    // A row containing icons for rating actions with some spacing.
    return BlocBuilder<ThemeModeCubit, PixanaThemeMode>(
      builder: (context, currentTheme) {
        return Container(
          color: Colors.transparent,
          height: 40,
          child: Row(
            children: [
              const Spacer(),
              // Switch to the rating section.
              IconButton(
                icon: Transform.scale(
                  scale: 1.25,
                  child: Icon(
                    Icons.star_outline_rounded,
                    color: currentTheme == PixanaThemeMode.light ? Colors.black : Colors.white,
                    size: 25,
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<RatingPageBloc>(context).add(SwitchToRating());
                },
              ),
              const SizedBox(
                width: 25,
              ),
              // Switch to the comment section.
              IconButton(
                icon: Icon(
                  Icons.mode_comment_outlined,
                  color: currentTheme == PixanaThemeMode.light ? Colors.black : Colors.white,
                  size: 25,
                ),
                onPressed: () {
                  BlocProvider.of<RatingPageBloc>(context).add(SwitchToComment());
                },
              ),
              const SizedBox(
                width: 25,
              ),
              // Submit the rating
              IconButton(
                icon: Icon(
                  Icons.send_outlined,
                  color: currentTheme == PixanaThemeMode.light ? Colors.black : Colors.white,
                  size: 25,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                width: 25,
              )
            ],
          ),
        );
      },
    );
  }
}
