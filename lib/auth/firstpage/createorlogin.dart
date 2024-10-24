import "dart:async";


import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:flutter_svg/flutter_svg.dart";

import '../../colors/colors.dart';
import '../../core/screen_utils.dart';
import '../../widgets/apptexts/apptext.dart';
import '../../widgets/buttons/buttons.dart';
import '../createaccountform/createacountform.dart';
import '../login/login.dart';
// import "package:whitecrossmobileapp/resources/colours/colors.dart";
// import "package:whitecrossmobileapp/resources/images/images.dart";
// import "package:whitecrossmobileapp/splash_screens/splash_main.dart";

class CreateOrLogin extends StatefulWidget {
  const CreateOrLogin({super.key});

  @override
  State<CreateOrLogin> createState() => _CreateOrLoginState();
}

class _CreateOrLoginState extends State<CreateOrLogin> {
  @override
  void dispose() {
    // _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenUtils = ScreenUtils(context);

    return Scaffold(
        // appBar: ,
        body: Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenUtils.defaultWidth,
      ),
      child: Column(
        children: [

           SizedBox(height: screenUtils.screenHeight*0.15,),

          // SvgPicture.asset(
          //   'assets/onboarding/firstimage.svg',
           
          // ),
          Image.asset("assets/presplash/launcher.png"),
           const SizedBox(
            height: 20,
          ),

          const AppText(
            bold: true,
            fontSize: 20,
            text: """
Relax and reward your passion for sports.""",
            textColor: AppColors.blueColor,
          ),

          const AppText(
            bold: false,
            fontSize: 25,
            text: """
BrilloSports is where you are rewarded for your passion.
""",
            textColor: AppColors.blueColor,
          ),

          const SizedBox(
            height: 40,
          ),

          YellowElevatedButton(text: "Create an Account", onPressed: () {

            Get.to(SignUpPage());
          }),

          const SizedBox(
            height: 10,
          ),
          TransparentElevatedButton(text: "Login", onPressed: () {

            Get.to(LoginPage());
          }),

// Backup Cash is a secure and automated
// savings app that allows you earn higher
// interest on deposits than your bank.
        ],
      ),
    ));
  }
}
