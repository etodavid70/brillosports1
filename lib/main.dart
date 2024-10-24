import 'dart:io';

import 'package:brillosports/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
import "package:get/get.dart";

import 'colors/colors.dart';
// import 'package:backupcash/core/camera/camera_services.dart';


// import 'package:whitecrossmobileapp/lib/core/camera/camera_services.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // final cameraService = CameraService();
  // await cameraService.initialize();  

  
  if (Platform.isAndroid || Platform.isIOS) {
    runApp(const MyApp());
  } else {
    throw Exception('This app is only intended for mobile devices.');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
    theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldColor, // Set scaffold background color here
        // primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity
        ),
      transitionDuration: const Duration(
        milliseconds: 2000
      ),
      
        debugShowCheckedModeBanner: false,
        initialRoute: intiailRoute,
        getPages: allroutes,
        //  binding: UserBindings(),
        );

  }
}
