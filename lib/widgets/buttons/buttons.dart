import "package:flutter/material.dart";


import '../../colors/colors.dart';

class YellowElevatedButton extends StatelessWidget {
  final String text;
  // final Color color;
  final VoidCallback onPressed;
  const YellowElevatedButton({
    Key? key,
    required this.text,
    // required this.color,
  required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
     width: 378,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
          ),
          backgroundColor: AppColors.yellow),
          onPressed: onPressed,
          child:  Text(text, style: TextStyle(color: AppColors.blueColor),),
        ),
      
    );
  }
}


class TransparentElevatedButton extends StatelessWidget {
  final String text;
  // final Color color;
  final VoidCallback onPressed;
  const TransparentElevatedButton({
    Key? key,
    required this.text,
    // required this.color,
  required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
     width: 378,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            
            borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
            side: BorderSide(
              color: AppColors.blueColor
            )
          ),
          backgroundColor: AppColors.whiteColor),
          onPressed: onPressed,
          child:  Text(text, style: TextStyle(color: AppColors.blueColor),),
        ),
      
    );
  }
}


class BlueElevatedButton extends StatelessWidget {
  final String text;
  // final Color color;
  final VoidCallback onPressed;
  const BlueElevatedButton({
    Key? key,
    required this.text,
    // required this.color,
  required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
     width: 285,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            
            borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
            side: BorderSide(
              width: 0
              // color:
            )
          ),
          backgroundColor: AppColors.blueColor),
          onPressed: onPressed,
          child:  Text(text, style: TextStyle(
            fontFamily: "quicksand",
            
            color: AppColors.whiteColor),),
        ),
      
    );
  }
}


class AnyColorElevatedButton extends StatelessWidget {
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  
  // final Color color;
  final VoidCallback onPressed;
  const AnyColorElevatedButton({
    Key? key,
    required this.text,
    this.buttonColor,
    this.textColor,
    // required this.color,
  required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
     width: 80,
      height: 22,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            
            borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
            side: BorderSide(
              width: 0,
              style: BorderStyle.none
              // color:
            )
          ),
          backgroundColor: buttonColor),
          onPressed: onPressed,
          child:  Text(text, style: TextStyle(
            fontFamily: "quicksand",
            fontSize: 8,
            fontWeight: FontWeight.w700,
            color: textColor),),
        ),
      
    );
  }
}


class AnyColorElevatedButtonWithBorder extends StatelessWidget {
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  final double? border;
  final double? height;
  final double? width;
  final double? textSize;
  
  // final Color color;
  final VoidCallback onPressed;
  const AnyColorElevatedButtonWithBorder({
    Key? key,
    required this.text,
    this.buttonColor,
    this.textColor,
    this.border,
    this.height,
    this.width,
    this.textSize,

    // required this.color,
  required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
     width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
           minimumSize: const Size(double.infinity, 100), 
          shape: const RoundedRectangleBorder(
            
            borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
            side: BorderSide(
              width: 0,
              style: BorderStyle.none
              // color:
            )
          ),
          backgroundColor: buttonColor),
          onPressed: onPressed,
          child:  Text(text, style: TextStyle(
            fontFamily: "quicksand",
            fontSize: textSize,
            fontWeight: FontWeight.w700,
            color: textColor),),
        ),
      
    );
  }
}


