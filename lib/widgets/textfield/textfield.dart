
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:get/get.dart";

import '../../colors/colors.dart';
// import "package:whitecrossmobileapp/resources/colours/colors.dart";
// import "package:whitecrossmobileapp/resources/reusable_widgets/texts.dart/reusable_text.dart";

class DefaultTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final int? maxLength;

  final TextInputType keyboardType;
 final bool? obscureText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool enabled;
  final Color backgroundColor;
final ValueChanged<String>? onChanged;
  DefaultTextField({
    Key? key,
    required this.labelText,
    this.hintText = '',
    required this.controller,
    this.onChanged,
    
    this. maxLength,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon ,
    this.enabled = true,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderColor
        )
      ),
      height: 56,
      child: TextFormField(
        cursorHeight: 20.0,
maxLength: maxLength,
        // onChanged: onChanged!,
        controller: controller,
        // validator: validator,
        keyboardType: keyboardType,
        obscureText: obscureText!,
        enabled: enabled,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          // prefixIcon: prefixIcon,

          labelStyle: const TextStyle(
            fontFamily: "quicksand",
              fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 10),
          filled: true,
          // border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          fillColor: backgroundColor,
          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(0),
          //     borderSide:
          //         BorderSide(color: AppColors.blackColor, width: 1)),
        ),
      ),
    );
  }
}


class DefaultTextFieldIcon extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final int? maxLength;

  final TextInputType keyboardType;
 final bool? obscureText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool enabled;
  final Color backgroundColor;
final ValueChanged<String>? onChanged;
  DefaultTextFieldIcon({
    Key? key,
    required this.labelText,
    this.hintText = '',
    required this.controller,
    this.onChanged,
    
    this. maxLength,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon ,
    this.enabled = true,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderColor
        )
      ),
      height: 56,
      child: TextFormField(
        
        cursorHeight: 20.0,
maxLength: maxLength,
        // onChanged: onChanged!,
        controller: controller,
        // validator: validator,
        keyboardType: keyboardType,
        obscureText: obscureText!,
        enabled: enabled,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          // prefixIcon: prefixIcon,

          labelStyle: const TextStyle(
            fontFamily: "quicksand",
              fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 10),
          filled: true,
          // border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          fillColor: backgroundColor,
          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(0),
          //     borderSide:
          //         BorderSide(color: AppColors.blackColor, width: 1)),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

class DefaultTextFieldCallback extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Icon suffixIcon;
  final bool enabled;
  final Color backgroundColor;
  final ValueChanged<String>? onFieldSubmitted;
  final int? maxlength;
  // Add callback for when field is submitted

  DefaultTextFieldCallback({
    Key? key,
    required this.labelText,
    this.hintText = '',
    required this.controller,
    this.maxlength,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.suffixIcon = const Icon(Icons.visibility),
    this.enabled = true,
    this.backgroundColor = Colors.white,
    this.onFieldSubmitted, // Initialize callback
  }) : super(key: key);

  @override
  _DefaultTextFieldCallbackState createState() =>
      _DefaultTextFieldCallbackState();
}

class _DefaultTextFieldCallbackState extends State<DefaultTextFieldCallback> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (!_focusNode.hasFocus) {
      // Call the provided callback when the TextField loses focus
      if (widget.onFieldSubmitted != null) {
        widget.onFieldSubmitted!(widget.controller.text);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextFormField(
        maxLength: widget.maxlength,
        focusNode: _focusNode,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        enabled: widget.enabled,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          counterText: '',
          labelText: widget.labelText,
          hintText: widget.hintText,
          // floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.grey,
            fontSize: 10,
          ),
          filled: true,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          fillColor: widget.backgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}



class DefaultTextFieldPassword extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  bool obscureText;
  final TextInputType keyboardType;
  final Icon suffixIcon;
  final bool enabled;
  final Color backgroundColor;
  final Function(String)? onChanged;

  DefaultTextFieldPassword(
      {Key? key,
      required this.labelText,
      this.hintText = '',
      required this.controller,
      this.keyboardType = TextInputType.text,
      this.obscureText = true,
      this.suffixIcon = const Icon(Icons.visibility),
      this.enabled = true,
      this.backgroundColor = Colors.white,
      this.onChanged})
      : super(key: key);

  @override
  State<DefaultTextFieldPassword> createState() =>
      _DefaultTextFieldPasswordState();
}

class _DefaultTextFieldPasswordState extends State<DefaultTextFieldPassword> {
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!RegExp(r'(?=.*[!@#\$&*~])').hasMatch(value)) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderColor
        )
      ),
 height: 56,

      child: TextFormField(
        cursorHeight: 20.0,
        controller: widget.controller,
        validator: _validatePassword,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        enabled: widget.enabled,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          labelText: widget.labelText,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 11,
              fontFamily: "quicksand",
              fontWeight: FontWeight.normal),
          hintText: widget.hintText,
          suffixIcon: IconButton(
            icon: widget.obscureText
                ? const Icon(Icons.visibility_off_outlined)
                : const Icon(Icons.visibility_outlined),
            onPressed: () {
              setState(() {
                widget.obscureText = !widget.obscureText;
              });
            },
          ),
          filled: true,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          fillColor: widget.backgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }
}

class DefaultTextFieldNumbers extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final int? maxlength;
  // final FormFieldValidator<String> validator;
  final TextInputType keyboardType;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onTextChanged;
  //  final TextInputType? keyboardType;
  //  final KeyboardType
  //  bool obscureText ;
  // final Icon prefixIcon;
  // final Icon suffixIcon;
  // final bool enabled;
  final Color backgroundColor;

  DefaultTextFieldNumbers({
    Key? key,
    required this.labelText,
    this.hintText = '',
    required this.controller,
    required this.maxlength,
    this.onFieldSubmitted,
    this.onTextChanged,
    required this.keyboardType,

    // this.enabled = true,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  State<DefaultTextFieldNumbers> createState() =>
      _DefaultTextFieldNumbersState();
}

class _DefaultTextFieldNumbersState extends State<DefaultTextFieldNumbers> {
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        if (widget.onFieldSubmitted != null) {
          widget.onFieldSubmitted!(widget.controller.text);
        }
      }
    });
  }

  @override
  void dispose() {
    // widget.controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextFormField(
        cursorHeight: 20.0,
        focusNode: _focusNode,
        onChanged: widget.onTextChanged,
        maxLength: widget.maxlength,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}')),
          LengthLimitingTextInputFormatter(widget.maxlength),
        ],
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          counterText: '',
          //  counterStyle:   const TextStyle(
          //   fontWeight: FontWeight.normal,
          //   color: Colors.grey,
          //   fontSize: 5
          // ),
          // prefixIcon: prefixIcon,

          labelStyle: const TextStyle(
              fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 12),
          filled: true,
          // border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          fillColor: widget.backgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}

class DefaultTextFieldEmail extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  // final int maxlength;
  // final FormFieldValidator<String> validator;
  final TextInputType keyboardType;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onTextChanged;
  final String? Function(String?)? validator;
  //  final TextInputType? keyboardType;
  //  final KeyboardType
  //  bool obscureText ;
  // final Icon prefixIcon;
  // final Icon suffixIcon;
  // final bool enabled;
  final Color backgroundColor;

  DefaultTextFieldEmail({
    Key? key,
    required this.labelText,
    this.hintText = '',
    required this.controller,
    // required this.maxlength,
    this.onFieldSubmitted,
    this.onTextChanged,
    this.validator,
    required this.keyboardType,

    // this.enabled = true,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  State<DefaultTextFieldEmail> createState() => _DefaultTextFieldEmailState();
}

class _DefaultTextFieldEmailState extends State<DefaultTextFieldEmail> {
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextFormField(
        cursorHeight: 20.0,
        focusNode: _focusNode,
        onChanged: widget.onTextChanged,
        // maxLength: widget.maxlength,

        controller: widget.controller,

        keyboardType: TextInputType.emailAddress,
        validator: _validateEmail,

        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          counterText: '',
          //  counterStyle:   const TextStyle(
          //   fontWeight: FontWeight.normal,
          //   color: Colors.grey,
          //   fontSize: 5
          // ),
          // prefixIcon: prefixIcon,

          labelStyle: const TextStyle(
              fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 12),
          filled: true,
          // border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          fillColor: widget.backgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}

String? _validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    Get.snackbar("Error", "Email is empty");
    return "";
  }

  // Regular expression for email validation
  String pattern = r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    Get.snackbar("Error", "Enter a valid email");

    return "";
  }

  return "";
}
