import "dart:convert";

import 'package:brillosports/dashboard/dashboard.dart';
import 'package:brillosports/widgets/dropdown/dropdown.dart';
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:get/get.dart";

import '../../colors/colors.dart';
import '../../core/screen_utils.dart';
import '../../widgets/apptexts/apptext.dart';
import '../../widgets/buttons/buttons.dart';
import '../../widgets/passwordvalidator/passwordvalidator.dart';
import '../../widgets/textfield/textfield.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _firstnameController = TextEditingController();

  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String selectedSport = "select a sport";



  void changeSports(String option){

    setState(() {
      selectedSport= option;
    });
  }

  bool passwordIsFilled = false;

  bool passwordMatch = false;

  bool formValidation() {
    if (_firstnameController.text.isEmpty) {
      Get.snackbar('Error', 'Firstname field is empty');
      return false;
    }
    if (_lastnameController.text.isEmpty) {
      Get.snackbar('Error', 'Last name field is empty');
      return false;
    }

    if (_emailController.text.isEmpty) {
      Get.snackbar('Error', 'email field is empty');
      return false;
    }

    if (_phoneController.text.isEmpty) {
      Get.snackbar('Error', 'Phone field is empty');
      return false;
    }
    if (_passwordController.text.isEmpty) {
      Get.snackbar('Error', 'Password field is empty');
      return false;
    }
    if (_confirmPasswordController.text.isEmpty) {
      Get.snackbar('Error', 'Confirm your password');
      return false;
    }

    if (passwordMatch == false) {
      Get.snackbar('Error', 'Password does not match');
      return false;
    } else {
      return true;
    }
  }
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
      appBar: AppBar(
        title: Text('Register'),
      ),
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
                  text: "Sign Up",
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
                  text: "Enter your details below",
                  fontSize: 10,
                  bold: false,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                width: screenUtils.screenWidth,
                child: Row(
                  children: [
                    Expanded(
                      child: DefaultTextField(
                        labelText: "First name",
                        controller: _firstnameController,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: DefaultTextField(
                        labelText: "Last Name",
                        controller: _lastnameController,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              DefaultTextField(
                // maxlength: 11,
                keyboardType: TextInputType.text,
                labelText: "Email Address",
                controller: _emailController,
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  SvgPicture.asset("assets/presplash/countrycode.svg"),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: DefaultTextField(
                      maxLength: 10,
                      // maxlength: 10,
                      keyboardType: TextInputType.number,
                      labelText: "Phone Number",
                      controller: _phoneController,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 12,
              ),

              DefaultTextFieldPassword(
                // maxlength: 11,
                keyboardType: TextInputType.text,
                labelText: "Password",
                controller: _passwordController,
                onChanged: (password) {
                  setState(() {
                    passwordIsFilled = true;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),

              Visibility(
                // visible:
                visible: passwordIsFilled,
                child: ValidationWidget(
                  controller: _passwordController,
                  onValidationChanged: (isValid) {
                    //use this for form validation
                    // registerController.isPasswordValid.value = isValid;
                    // print(isValid);
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              DefaultTextFieldPassword(
                // maxlength: 11,
                keyboardType: TextInputType.text,
                labelText: "Confirm Password",
                controller: _confirmPasswordController,
                onChanged: (password) {
                  setState(() {
                    passwordIsFilled = true;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),

              Visibility(
                // visible:
                visible: passwordIsFilled,
                child: ConfirmPasswordValidator(
                  passwordController: _passwordController,
                  confirmPasswordController: _confirmPasswordController,
                  // controller: _passwordController,
                  onValidationChanged: (isValid) {
                    //use this for form validation
                    setState(() {
                      passwordMatch = isValid;
                    });
                    // registerController.isPasswordValid.value = isValid;
                    // print(isValid);
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // const SizedBox(
              //   width: 10,
              // ),

              //  const SizedBox(height: 20),

              // AppTextAsterics(
              //     textColor: AppColors.blackColor,
              //     text: "Title",
              //     fontSize: 12,
              //     bold: true),

              // By continuing, you accept or Terms of Service and Private Policy

              // Dropdown(items: [], onChanged: (){

              // })
              DropDown(dropdownlist: const [
                " Football",
                "Basketball",
                "Ice Hockey",
                "Motorsports",
                "Bandy",
                "Rugby",
                "Skiing",
                "Shooting"
              ], callback: changeSports,
              
              dropDownText: selectedSport,),

              const SizedBox(height: 40),
              const AppText(
                textColor: AppColors.blueColor,
                text:
                    "By continuing, you accept or Terms of Service and Private Policy",
                fontSize: 9,
                bold: true,
              ),

              const SizedBox(
                height: 20,
              ),

              BlueElevatedButton(
                  text: "Register",
                  onPressed: () async {
                    var isFormValid = formValidation();

                    if(isFormValid){
Get.to(DashboardScreen());
                    }

                    //start the loader
                    // loaderController.showLoader();
                    // showLoaderDialog(Get.context!);
                  }),

              const SizedBox(
                height: 20,
              )
              //     ],
              //   ),
            ],
          ),
        
        ),
      ),
    );
  }
}
