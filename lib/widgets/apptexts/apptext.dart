import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class ReusableText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow overflow;
  final double fontSize;
  final Color textColor;

  const ReusableText({
    required this.textColor,
    required this.text,
    required this.fontSize,
    Key? key,
    this.style,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(
            fontSize: fontSize,
            color: textColor,
            fontFamily: "plusJakartaSans",
            decoration: TextDecoration.none,
          ) ??
          TextStyle(
            fontSize: fontSize,
            color: textColor,
            fontFamily: "plusJakartaSans",
            decoration: TextDecoration.none,
          ),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}

class ReusableTextBold extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow overflow;
  final double fontSize;
  final Color textColor;

  const ReusableTextBold({
    required this.textColor,
    required this.text,
    required this.fontSize,
    Key? key,
    this.style,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(
            fontSize: fontSize,
            color: textColor,
            fontFamily: "plusJakartaSans",
            decoration: TextDecoration.none,
          ) ??
          TextStyle(
              fontSize: fontSize,
              color: textColor,
              fontFamily: "plusJakartaSans",
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}


class AppTextAstericsBefore extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow overflow;
  final double fontSize;
  final Color textColor;
  final bool bold;
  const AppTextAstericsBefore({
    required this.textColor,
    required this.text,
    required this.fontSize,
    required this.bold,
    Key? key,
    this.style,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "*",
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
        Text(
          text,
          style: style?.copyWith(
                fontSize: fontSize,
                color: textColor,
                fontFamily: "plusJakartaSans",
                decoration: TextDecoration.none,
              ) ??
              TextStyle(
                  // fontSize: fontSize,
                  fontSize: 11,
                  color: textColor,
                  fontFamily: "plusJakartaSans",
                  decoration: TextDecoration.none,
                  fontWeight: bold ? FontWeight.bold : FontWeight.normal),
          textAlign: textAlign,
          overflow: overflow,
        ),
      ],
    );
  }
}

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow overflow;
  final double fontSize;
  final Color textColor;
  final bool bold;
  const AppText({
    required this.textColor,
    required this.text,
    required this.fontSize,
    required this.bold,
    Key? key,
    this.style,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Text(
          text,
          style: style?.copyWith(
                fontSize: fontSize,
                color: textColor,
                fontFamily: "plusJakartaSans",
                decoration: TextDecoration.none,
              ) ??
              TextStyle(
                  // fontSize: fontSize,
                  fontSize: 11,
                  color: textColor,
                  fontFamily: "plusJakartaSans",
                  decoration: TextDecoration.none,
                  fontWeight: bold ? FontWeight.bold : FontWeight.normal),
          textAlign: textAlign,
          overflow: overflow,
        );
  }
}
