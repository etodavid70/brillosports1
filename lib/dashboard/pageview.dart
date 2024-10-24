
import 'package:brillosports/dashboard/buddies.dart';
import 'package:brillosports/dashboard/discover.dart';
import 'package:brillosports/dashboard/profile.dart';
// import 'package:brillosports/dashboard/settings.dart';
import 'package:brillosports/dashboard/settings/settings.dart';
import 'package:brillosports/widgets/bottomnavbar/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class DashBoardPageView extends StatelessWidget {
  const DashBoardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController());
    return PageView(
      controller: controller.pageviewController,
      onPageChanged: controller.switchScreen,
      children:  [
         Profile(),
        
         Discover(),
         Buddies(),
        Settings(),
        // Chat()

       
      ],
    );
  }
}




