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

class ChangePassword extends StatefulWidget {
  ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
 
  // final fieldsController = Get.put(UserDetailsController());

 
  final TextEditingController _emailController = TextEditingController();
  
  final TextEditingController _passwordController = TextEditingController();
  

bool formValidation() {
    if (_emailController.text.isEmpty) {
      Get.snackbar('Error', 'email field is empty');
      return false;
    }
    if (_passwordController .text.isEmpty) {
      Get.snackbar('Error', 'password field is empty');
      return false;
    }
    else {
      return true;
    }

}
  
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
      appBar: AppBar(title: Text("Change Password"),),
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
                  text: "Fill the form below to change Password",
                  fontSize: 15,
                  bold: true,
                ),
              ),
              const SizedBox(
                height: 10,
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
             
             DefaultTextField(
                // maxlength: 11,
                keyboardType: TextInputType.text,
                labelText: "Phone Number",
                controller: _passwordController,
              ),
                            const SizedBox(
                height: 10,
              ),
             

             
              // const SizedBox(height: 20),


             
              
        

              SizedBox(
                height: screenUtils.screenHeight*0.2,
              ),

            
              BlueElevatedButton(
                  text: "Continue",
                  onPressed: () async {
                 
                 bool isFormValid=formValidation();

                 if(isFormValid){


                 }

                    // Get.to(DashboardScreen());
                    //start the loader
                    // loaderController.showLoader();
                    // showLoaderDialog(Get.context!);
                  }),

          
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
