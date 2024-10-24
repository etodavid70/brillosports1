import "dart:convert";


import 'package:brillosports/auth/createaccountform/createacountform.dart';
import 'package:brillosports/dashboard/dashboard.dart';
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:get/get.dart";

import '../../colors/colors.dart';
import '../../core/screen_utils.dart';
import '../../widgets/apptexts/apptext.dart';
import '../../widgets/buttons/buttons.dart';
import '../../widgets/textfield/textfield.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
  // final fieldsController = Get.put(UserDetailsController());

 
  final TextEditingController _emailController = TextEditingController();
  
  final TextEditingController _passwordController = TextEditingController();
  

  
  // bool passwordIsFilled=false;
  // Map<String, dynamic> states={};

  // final TextEditingController _phoneController = TextEditingController();
  @override
  void initState() {
    super.initState();
    // fieldsController.getTitle();
// _getstates();
  }

  @override
  Widget build(BuildContext context) {
    final screenUtils = ScreenUtils(context);

    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: screenUtils.defaultWidth,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),

              Align(
                alignment: Alignment.topLeft,
                child: AppText(
                  textColor: AppColors.blackColor,
                  text: "Welcome back",
                  fontSize: 15,
                  bold: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: AppText(
                  textColor: Colors.grey,
                  text: "Securely log into your account",
                  fontSize: 10,
                  bold: false,
                ),
              ),

            

         
              const SizedBox(
                height: 20,
              ),

              DefaultTextField(
                // maxlength: 11,
                keyboardType: TextInputType.text,
                labelText: "Email",
                controller: _emailController,
              ),
              const SizedBox(
                height: 20,
              ),
             
             DefaultTextFieldPassword(
                // maxlength: 11,
                keyboardType: TextInputType.text,
                labelText: "Password",
                controller: _passwordController,
              ),
                            const SizedBox(
                height: 10,
              ),
             

               Row(
              children: [
                 Checkbox(
                  value: true,
                  onChanged: null,
                 fillColor: MaterialStateProperty.all(AppColors.blueColor), 
                ),
               const AppText(
                  bold: false,
                    textColor: Colors.grey,
                    text: "Remember Me",
                    fontSize: 10),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  // => Get.to( ForgotPasswordScreen()),
                  child: const AppText(
                    bold: true,
                      textColor: AppColors.blueColor,
                      text: "  Forgot Password",
                      fontSize: 10),
                ),
              ],
            ),
         

              // const SizedBox(height: 20),


             
                const SizedBox(height: 20),

        

              SizedBox(
                height: screenUtils.screenHeight*0.2,
              ),

            
              BlueElevatedButton(
                  text: "Continue",
                  onPressed: () async {
                 

                    Get.to(DashboardScreen());
                    //start the loader
                    // loaderController.showLoader();
                    // showLoaderDialog(Get.context!);
                  }),

              const SizedBox(
                height: 20,
              ),
                Row(
          mainAxisAlignment: MainAxisAlignment.center,
             children: [
                 AppText(
                    textColor: AppColors.blueColor,
                    text:
            "Don’t have an account?",
                    fontSize: 10,
                    bold: false,
                  ),
                   InkWell(
                   onTap: (){
                      Get.to(SignUpPage());
                   },
                     child: AppText(
                      textColor: AppColors.blueColor,
                      text:
                          "Create one",
                      fontSize: 10,
                      bold: true,
                                       ),
                   ),
             ],
           ),

             const SizedBox(
                height: 40,
              ),
              //     ],
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
