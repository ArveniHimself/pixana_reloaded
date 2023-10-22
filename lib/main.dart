import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pixana_reloaded/home.dart';
import 'package:pixana_reloaded/screens/rating_page/bloc/rating_page_bloc.dart';
import 'package:pixana_reloaded/screens/rating_page/cubit/theme_mode_cubit.dart';
import 'package:pixana_reloaded/screens/start_screens/bloc/registration_bloc.dart';
import 'package:pixana_reloaded/screens/start_screens/bloc/registration_state.dart';
import 'package:pixana_reloaded/screens/start_screens/view/onboarding_screens.dart';
import 'package:pixana_reloaded/screens/start_screens/cubit/authentication_cubit.dart';
import 'package:pixana_reloaded/shared/constants/translations.dart';
import 'package:pixana_reloaded/shared/themes/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Here firebase is initialized before the app starts.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final authCubit = AuthenticationCubit(FirebaseAuth.instance);
  // Check if any user is logged in upon start of the App.
  authCubit.checkAuthentication();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(
      BlocProvider.value(
        value: authCubit,
        child: const Pixana(),
      ),
    );
  });
  // The app pixana is started here.
}

class Pixana extends StatelessWidget {
  const Pixana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Provide RatingPageBloc to the widget tree.
        BlocProvider<RatingPageBloc>(
          create: (context) => RatingPageBloc(),
        ),
        // Provide ThemeModeCubit to the widget tree.
        BlocProvider<ThemeModeCubit>(
          create: (context) => ThemeModeCubit(),
        ),
        // Provide AuthenticationCubit to the widget tree to track wheter user is already logged in.
        BlocProvider<AuthenticationCubit>(
          create: (context) => AuthenticationCubit(FirebaseAuth.instance),
        ),
        // Provide RegistrationBloc for registration page state
        BlocProvider(
          create: (context) => RegistrationBloc(RegistrationBlocState()),
        )
      ],
      child: BlocBuilder<AuthenticationCubit, UserObject>(
        builder: (context, userAuthStatus) {
          return BlocBuilder<ThemeModeCubit, PixanaThemeMode>(
            builder: (context, theme) {
              // Build the MaterialApp based on the selected theme.
              return GetMaterialApp(
                translations: Messages(), // your translations
                locale: const Locale('en', 'US'), // translations will be displayed in that locale
                fallbackLocale: const Locale('en',
                    'US'), // specify the fallback locale in case an invalid locale is selected.
                title: 'Pixana Reloaded',
                theme: theme == PixanaThemeMode.light
                    ? PixanaTheme.light
                    : PixanaTheme
                        .dark, // Set the light or dark theme based on the current theme mode.
                debugShowCheckedModeBanner: false,
                home: userAuthStatus.isAuthenticated ? const Home() : const Onboarding(),
              );
            },
          );
        },
      ),
    );
  }
}
