
import 'package:flutter/material.dart';

import '../../colors/colors.dart';
import '../apptexts/apptext.dart';


class ValidationWidget extends StatefulWidget {
  final TextEditingController controller;
  final ValueChanged<bool> onValidationChanged;

  const ValidationWidget({
    required this.controller,
    required this.onValidationChanged,
    Key? key,
  }) : super(key: key);

  @override
  _ValidationWidgetState createState() => _ValidationWidgetState();
}

class _ValidationWidgetState extends State<ValidationWidget> {
  bool hasMinLength = false;
  bool hasSpecialChar = false;
  bool hasUpperCase = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(validate);
  }

  @override
  void dispose() {
    widget.controller.removeListener(validate);
    super.dispose();
  }

  void validate() {
    final text = widget.controller.text;

    setState(() {
      hasMinLength = text.length > 6;
      hasSpecialChar = text.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
      hasUpperCase = text.contains(RegExp(r'[A-Z]'));
    });

    final isValid = hasMinLength && hasSpecialChar && hasUpperCase;
    widget.onValidationChanged(isValid);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildValidationIcon(
          condition: hasMinLength,
          text: 'Must be more than 6 characters',
        ),
        buildValidationIcon(
          condition: hasSpecialChar,
          text: 'Must contain a special character',
        ),
        buildValidationIcon(
          condition: hasUpperCase,
          text: 'Must contain an uppercase letter',
        ),
      ],
    );
  }

  Widget buildValidationIcon({required bool condition, required String text}) {
    return Row(
      children: [
        Icon(
          size: 10,
          condition ? Icons.check : Icons.error,
          color: condition ? AppColors.blueColor : Colors.red,
        ),
       const SizedBox(width: 2),
        AppText(textColor: condition ? AppColors.blueColor : Colors.red, text: text, fontSize: 8, bold: false)
        // Text(text),
      ],
    );
  }
}


// import 'package:flutter/material.dart';

class ConfirmPasswordValidator extends StatefulWidget {
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final ValueChanged<bool> onValidationChanged;

  const ConfirmPasswordValidator({
    required this.passwordController,
    required this.confirmPasswordController,
    required this.onValidationChanged,
    Key? key,
  }) : super(key: key);

  @override
  _ConfirmPasswordValidatorState createState() =>
      _ConfirmPasswordValidatorState();
}

class _ConfirmPasswordValidatorState extends State<ConfirmPasswordValidator> {
  bool isPasswordMatch = false;

  @override
  void initState() {
    super.initState();
    widget.passwordController.addListener(validate);
    widget.confirmPasswordController.addListener(validate);
  }

  @override
  void dispose() {
    widget.passwordController.removeListener(validate);
    widget.confirmPasswordController.removeListener(validate);
    super.dispose();
  }

  void validate() {
    setState(() {
      isPasswordMatch =
          widget.passwordController.text == widget.confirmPasswordController.text;
    });

    widget.onValidationChanged(isPasswordMatch);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
           size: 10,
          isPasswordMatch ? Icons.check : Icons.error,
          color: isPasswordMatch ? AppColors.blueColor : Colors.red,
        ),
     const   SizedBox(width: 2),
          AppText(textColor: isPasswordMatch ? AppColors.blueColor : Colors.red, text: isPasswordMatch ? 'Passwords match' : 'Passwords do not match', fontSize: 8, bold: false)

        // Text(isPasswordMatch ? 'Passwords match' : 'Passwords do not match'),
      ],
    );
  }
}
