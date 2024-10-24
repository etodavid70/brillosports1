import "dart:convert";


import 'package:brillosports/auth/createaccountform/createacountform.dart';
import 'package:brillosports/auth/login/login.dart';
import 'package:brillosports/dashboard/dashboard.dart';
import 'package:brillosports/dashboard/settings/changepassword.dart';
import 'package:brillosports/dashboard/settings/updateemail.dart';
import 'package:brillosports/dashboard/settings/updateusername.dart';
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:get/get.dart";

import '../../colors/colors.dart';
import '../../core/screen_utils.dart';
import '../../widgets/apptexts/apptext.dart';
import '../../widgets/buttons/buttons.dart';
import '../../widgets/textfield/textfield.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  // final fieldsController = Get.put(UserDetailsController());
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

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

            
         
            
              InkWell(
                onTap: (){
                  Get.to(ChangePassword());
                },
                child: DefaultTextFieldIcon(
                  prefixIcon: Icon(Icons.keyboard_double_arrow_right_rounded),
                  enabled: false,
                  // maxlength: 11,
                  keyboardType: TextInputType.text,
                  labelText: "Change Password",
                  controller: _emailController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
             

           
              InkWell(
                onTap:(){
                  Get.to(UpdateEmail());
                },
                child: DefaultTextFieldIcon(
                  prefixIcon: Icon(Icons.keyboard_double_arrow_right_rounded),
                  enabled: false,
                  // maxlength: 11,
                  keyboardType: TextInputType.text,
                  labelText: "Update Email",
                  controller: _emailController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              InkWell(
                onTap: (){

                  Get.to(UpdateUsername());
                },
                child: DefaultTextFieldIcon(
                  prefixIcon: Icon(Icons.keyboard_double_arrow_right_rounded),
                  enabled: false,
                  // maxlength: 11,
                  keyboardType: TextInputType.text,
                  labelText: "Update Username",
                  controller: _emailController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
             
             
             
          
             

          

              // const SizedBox(height: 20),


             
                const SizedBox(height: 20),

        

              SizedBox(
                height: screenUtils.screenHeight*0.2,
              ),

            
              BlueElevatedButton(
                  text: "Logout",
                  onPressed: () async {
                 

                    Get.to(LoginPage());
                    //start the loader
                    // loaderController.showLoader();
                    // showLoaderDialog(Get.context!);
                  }),

              const SizedBox(
                height: 20,
              ),
         
            
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
