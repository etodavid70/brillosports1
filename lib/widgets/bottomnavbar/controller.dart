import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
// import 'package:whitecrossmobileapp/dashboard/dashboardpageview/page_view.dart';
import 'package:flutter/animation.dart';


class BottomNavController extends GetxController {
  // final ApiService apiCaller =Get.put(ApiService());

  // final ProfileController _profileController=Get.put(ProfileController());
  
  var currentIndex = 0.obs;
  final PageController pageviewController = PageController();

  void changeIndex(int index) {
    currentIndex.value = index;
 
  }


void onTabTapped(int index) {
    pageviewController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOutQuart);
  }





void switchScreen(int index) {
  currentIndex.value = index;
  
// if (index==3  && _profileController.isLoadingProfile.value==true){
//   print(_profileController.isLoadingProfile.value);
//       _profileController.fetchUser();
//     }

  
  
  }

@override
      void dispose() {
    pageviewController.dispose();
    super.dispose();
  }

}
