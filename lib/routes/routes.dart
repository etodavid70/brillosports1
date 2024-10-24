
import "package:get/get.dart";

import '../auth/firstpage/createorlogin.dart';
import '../presplash/presplash.dart';


List<GetPage<dynamic>>? allroutes = [
  GetPage(name: '/', page: () => PreSplashScreen()),
  GetPage(name: '/createorlogin', page: () => const CreateOrLogin()),
//   GetPage(name: '/signup', page: () => SignUpPage()),
//   GetPage(name: '/verifyotp', page: () => VerifyotpPage()),
//   GetPage(name: '/login', page: () => LoginPage()),
// GetPage(name: '/dashboard', page: () => DashboardScreen()),

  // GetPage(name: '/details', page: () => DetailsPage()),
];

String intiailRoute = "/";
