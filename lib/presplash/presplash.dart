import 'dart:async'; // Add this import for Future.delayed
import 'package:brillosports/auth/firstpage/createorlogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
// import 'package:wayabidding/dashboard/dashboard.dart'; // Assuming you're using GetX for navigation

class PreSplashScreen extends StatefulWidget {
  @override
  _PreSplashScreenState createState() => _PreSplashScreenState();
}

class _PreSplashScreenState extends State<PreSplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.05, end: 0.4).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward();

    // Navigate to another page after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(() => const CreateOrLogin()); // Replace with your destination page
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset(
            'assets/presplash/launcher.png', // Replace with your image path
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
