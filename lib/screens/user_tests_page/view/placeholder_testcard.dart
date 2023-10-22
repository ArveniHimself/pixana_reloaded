import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixana_reloaded/screens/rating_page/cubit/theme_mode_cubit.dart';
import 'package:pixana_reloaded/shared/services/screens_size_service.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class PlaceholderTestcard extends StatelessWidget {
  const PlaceholderTestcard({
    super.key,
    required this.screenSize,
  });

  final ScreenSize screenSize;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeCubit, PixanaThemeMode>(
      builder: (context, currentTheme) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            children: [
              SizedBox(
                height: screenSize == ScreenSize.largeScreen ? 215 : 205,
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      // Category + Photo
                      Expanded(
                        flex: screenSize == ScreenSize.smallScreen ? 7 : 5,
                        child: Column(
                          children: [
                            // Category
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                right: 10,
                                left: 15,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                      ),
                                    ),
                                    child: const Center(
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          '?',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: currentTheme == PixanaThemeMode.light
                                            ? Colors.grey[200]
                                            : Colors.grey[900],
                                        shape: BoxShape.rectangle,
                                        borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                        ),
                                      ),
                                      child: Center(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "Category",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: currentTheme == PixanaThemeMode.light
                                                    ? Colors.black
                                                    : Colors.white,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Photo
                            Padding(
                              padding: const EdgeInsets.only(left: 15, right: 10, top: 10),
                              child: AspectRatio(
                                aspectRatio: 19 / 20,
                                child: Container(
                                  color: currentTheme == PixanaThemeMode.light
                                      ? Colors.grey[200]
                                      : Colors.grey[850],
                                  child: const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Center(child: Text("Click here")),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Rate count + Active switch + Small ratings
                      Expanded(
                        flex: screenSize == ScreenSize.smallScreen ? 8 : 7,
                        child: Column(
                          children: [
                            // RateCount + Active switch
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Row(
                                children: [
                                  // RateIcon and rates
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey[400],
                                          shape: BoxShape.rectangle,
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.touch_app,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: screenSize == ScreenSize.smallScreen
                                            ? MediaQuery.of(context).size.width * 0.24
                                            : MediaQuery.of(context).size.width * 0.29,
                                        decoration: BoxDecoration(
                                          color: currentTheme == PixanaThemeMode.light
                                              ? Colors.grey[200]
                                              : Colors.grey[900],
                                          shape: BoxShape.rectangle,
                                          borderRadius: const BorderRadius.only(
                                              bottomRight: Radius.circular(5),
                                              topRight: Radius.circular(5)),
                                        ),
                                        child: Center(
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              "? / votes",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: currentTheme == PixanaThemeMode.light
                                                      ? Colors.black
                                                      : Colors.white,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Switch(
                                    inactiveThumbColor: Colors.grey,
                                    activeColor: Colors.green,
                                    value: false,
                                    onChanged: null,
                                  ),
                                ],
                              ),
                            ),
                            // Ratings in small
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  // Avg rating 1
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10, top: 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: currentTheme == PixanaThemeMode.light
                                            ? Colors.white
                                            : Colors.grey[900],
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          width: 1.5,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: SizedBox(
                                        height: 30,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: screenSize == ScreenSize.smallScreen ? 0 : 5,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: currentTheme == PixanaThemeMode.light
                                                    ? Colors.white
                                                    : Colors.grey[900],
                                                borderRadius: BorderRadius.circular(
                                                  25,
                                                ),
                                              ),
                                              child: SmoothStarRating(
                                                color: Colors.teal[600],
                                                borderColor: Colors.grey[600],
                                                spacing:
                                                    screenSize == ScreenSize.smallScreen ? 0 : 3,
                                                onRatingChanged: (voidRate) {},
                                                //fix this false false
                                                allowHalfRating: false,
                                                size:
                                                    screenSize == ScreenSize.smallScreen ? 26 : 28,
                                                rating: 0,
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(25),
                                                color: currentTheme == PixanaThemeMode.light
                                                    ? Colors.white
                                                    : Colors.grey[900],
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    vertical: 7, horizontal: 7),
                                                child: FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    '0',
                                                    style: TextStyle(
                                                      color: currentTheme == PixanaThemeMode.light
                                                          ? Colors.black
                                                          : Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  // Avg rating 2
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10, top: 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: currentTheme == PixanaThemeMode.light
                                            ? Colors.white
                                            : Colors.grey[900],
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          width: 1.5,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: SizedBox(
                                        height: 30,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: screenSize == ScreenSize.smallScreen ? 0 : 5,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: currentTheme == PixanaThemeMode.light
                                                    ? Colors.white
                                                    : Colors.grey[900],
                                                borderRadius: BorderRadius.circular(
                                                  25,
                                                ),
                                              ),
                                              child: SmoothStarRating(
                                                color: Colors.teal[600],
                                                borderColor: Colors.grey[600],
                                                spacing:
                                                    screenSize == ScreenSize.smallScreen ? 0 : 3,

                                                //fix this false false
                                                allowHalfRating: false,
                                                size:
                                                    screenSize == ScreenSize.smallScreen ? 26 : 28,
                                                rating: 0,
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(25),
                                                color: currentTheme == PixanaThemeMode.light
                                                    ? Colors.white
                                                    : Colors.grey[900],
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    vertical: 7, horizontal: 7),
                                                child: FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    '0',
                                                    style: TextStyle(
                                                      color: currentTheme == PixanaThemeMode.light
                                                          ? Colors.black
                                                          : Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),

                                  // Avg rating 3
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10, top: 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: currentTheme == PixanaThemeMode.light
                                            ? Colors.white
                                            : Colors.grey[900],
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          width: 1.5,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: SizedBox(
                                        height: 30,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: screenSize == ScreenSize.smallScreen ? 0 : 5,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: currentTheme == PixanaThemeMode.light
                                                    ? Colors.white
                                                    : Colors.grey[900],
                                                borderRadius: BorderRadius.circular(
                                                  30,
                                                ),
                                              ),
                                              child: SmoothStarRating(
                                                color: Colors.teal[600],
                                                borderColor: Colors.grey[600],
                                                spacing:
                                                    screenSize == ScreenSize.smallScreen ? 0 : 3,

                                                //fix this false false
                                                allowHalfRating: false,
                                                size:
                                                    screenSize == ScreenSize.smallScreen ? 26 : 28,
                                                rating: 0,
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(25),
                                                color: currentTheme == PixanaThemeMode.light
                                                    ? Colors.white
                                                    : Colors.grey[900],
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    vertical: 7, horizontal: 7),
                                                child: FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    '0',
                                                    style: TextStyle(
                                                      color: currentTheme == PixanaThemeMode.light
                                                          ? Colors.black
                                                          : Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
