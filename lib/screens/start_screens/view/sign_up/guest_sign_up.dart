import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_material_pickers/helpers/show_number_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:pixana_reloaded/screens/start_screens/model/pixana_user.dart';

import '../../controller/bloc/registration_bloc.dart';
import '../../controller/bloc/registration_state.dart';

/// This page is used to get some information needed in case a new user is using the anonymous login.
class GuestSignUp extends StatelessWidget {
  const GuestSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: guestSignUpAppBar(context), // The Appbar.
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:
            // Linear Gradient design of onboarding.
            BoxDecoration(
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
              Colors.teal[700]!,
              Colors.teal[600]!,
              Colors.teal,
            ],
          ),
        ),
        child: Column(
          children: [
            // Title of page.
            //------------------------------------------------------------------------------------
            const SizedBox(
              height: 35,
            ),
            Text(
              "aLittleMoreAboutYou".tr,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),

            // Age picker.
            //------------------------------------------------------------------------------------
            const SizedBox(
              height: 75,
            ),
            Text(
              'selectBirthdayYear'.tr,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            // SelectAge + Show selectedAge.
            Row(
              children: [
                const Spacer(),
                SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.black38,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.date_range_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "Click to select",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      pickAge(context).then(
                        (birthdayYear) => BlocProvider.of<RegistrationBloc>(context)
                            .add(SelectedAgeEvent(birthdayYear: birthdayYear!)),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                BlocBuilder<RegistrationBloc, RegistrationBlocState>(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black38,
                      ),
                      width: 50,
                      height: 45,
                      child: Center(
                          child: Text(
                        state.birthdayYear != null ? "${state.birthdayYear}" : "2000",
                        style: const TextStyle(color: Colors.white),
                      )),
                    );
                  },
                ),
                const Spacer(),
              ],
            ),

            // Gender Picker
            //------------------------------------------------------------------------------------
            const SizedBox(
              height: 70,
            ),
            Text(
              "selectGender".tr,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
            //gender input -> needs checking.
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: BlocBuilder<RegistrationBloc, RegistrationBlocState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Select male gender.
                      SizedBox(
                        width: 90,
                        height: 90,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(
                              state.gender !=
                                      Gender.male // Highlight the male option if its chosen.
                                  ? Colors.black38
                                  : Theme.of(context).colorScheme.secondary,
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.male,
                                size: 45,
                              ),
                              Text("male".tr),
                            ],
                          ),
                          onPressed: () {
                            BlocProvider.of<RegistrationBloc>(context)
                                .add(SelectedGenderEvent(gender: Gender.male));
                          },
                        ),
                      ),

                      // Select female gender.
                      SizedBox(
                        width: 90,
                        height: 90,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(
                              state.gender != Gender.female
                                  ? Colors.black38
                                  : Theme.of(context).colorScheme.secondary,
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.female,
                                size: 45,
                              ),
                              Text("female".tr),
                            ],
                          ),
                          onPressed: () {
                            BlocProvider.of<RegistrationBloc>(context)
                                .add(SelectedGenderEvent(gender: Gender.female));
                          },
                        ),
                      ),

                      // Select divers gender.
                      SizedBox(
                        width: 90,
                        height: 90,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(
                              state.gender != Gender.divers
                                  ? Colors.black38
                                  : Theme.of(context).colorScheme.secondary,
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.diversity_1_rounded,
                                size: 45,
                              ),
                              Text("divers".tr),
                            ],
                          ),
                          onPressed: () {
                            BlocProvider.of<RegistrationBloc>(context)
                                .add(SelectedGenderEvent(gender: Gender.divers));
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            // Accept Terms & Conditions
            //------------------------------------------------------------------------------------
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: BlocBuilder<RegistrationBloc, RegistrationBlocState>(
                builder: (context, state) {
                  return ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.black38,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                color: (state.clickedLoginButton && !state.termsAccepted)
                                    ? Colors.red
                                    : Colors.transparent)),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.touch_app_outlined),
                        Text("Click to read Terms & Conditions"),
                      ],
                    ),
                    onPressed: () {},
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(),
                Text(
                  "acceptTermsConditions".tr,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                BlocBuilder<RegistrationBloc, RegistrationBlocState>(
                  builder: (context, state) {
                    return Checkbox(
                      side: BorderSide(
                          color: (state.clickedLoginButton && !state.termsAccepted)
                              ? Colors.red
                              : Colors.white,
                          width: (state.clickedLoginButton && !state.termsAccepted) ? 2 : 1),
                      value: state.termsAccepted,
                      onChanged: (value) {
                        if (!state.termsAccepted) {
                          BlocProvider.of<RegistrationBloc>(context).add(
                            AcceptedTermsEvent(termsAccepted: true),
                          );
                        } else {
                          BlocProvider.of<RegistrationBloc>(context).add(
                            AcceptedTermsEvent(termsAccepted: false),
                          );
                        }
                      },
                    );
                  },
                ),
                const Spacer(),
              ],
            ),

            // Log In as Guest.
            //------------------------------------------------------------------------------------
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              width: 200,
              height: 45,
              child: BlocBuilder<RegistrationBloc, RegistrationBlocState>(
                builder: (context, state) {
                  return ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      // 1. Step - User clicks on the login button.
                      context.read<RegistrationBloc>().add(
                            ClickedLoginButton(clickedLoginButton: true),
                          );

                      //
                      await Future.delayed(
                        const Duration(seconds: 3),
                        () {
                          debugPrint("clicked to false");
                          // Set to default
                          context.read<RegistrationBloc>().add(
                                ClickedLoginButton(clickedLoginButton: false),
                              );
                        },
                      ).then((value) async {
                        if (context.read<RegistrationBloc>().state.readyToNavigate) {
                          debugPrint("nav pop");

                          Navigator.pop(context);
                        } else {
                          debugPrint("nav not pop");

                          debugPrint(
                              context.read<RegistrationBloc>().state.readyToNavigate.toString());

                          await showModalBottomSheet(
                            context: context,
                            builder: (context) => const SizedBox(
                              height: 100,
                              child: Center(
                                child: Text("Login failed. Try again."),
                              ),
                            ),
                          );
                        }
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: state.loading ? "Loading" : "guestLogin".tr,
                                style: const TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        state.loading
                            ? const SpinKitCircle(
                                color: Colors.black,
                                size: 20,
                              )
                            : const Icon(
                                Icons.arrow_right_outlined,
                                color: Colors.black,
                              ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Opens dialog for the user to select birthdayYear
  Future<int?> pickAge(BuildContext context) async {
    return await showMaterialNumberPicker(
      context: context,
      title: 'Select your birthday year',
      maxNumber: 2007,
      minNumber: 1950,
      backgroundColor: Colors.white,
      selectedNumber: 2000,
    );
  }

  AppBar guestSignUpAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal[900],
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.teal[900],
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
