

import 'package:brillosports/dashboard/pageview.dart';
import 'package:brillosports/widgets/bottomnavbar/bottomnavbar.dart';
import 'package:brillosports/widgets/bottomnavbar/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class DashboardScreen extends StatelessWidget {
  final BottomNavController _dashboardcontroller =
      Get.put(BottomNavController());

  // void _onItemTapped(int index) {}

  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     
      body: const DashBoardPageView(),
      bottomNavigationBar: 
      Obx(  (){

        return  AppBottomNav(
            currentIndex: _dashboardcontroller.currentIndex.value,
            onTap: (int index) {
          _dashboardcontroller.onTabTapped(index);
          _dashboardcontroller.changeIndex(index);
          print(index);
          print(_dashboardcontroller.currentIndex.value);
        },
            
            // onTap: (int index) {
            //   _dashboardcontroller.changeIndex(index);
            // }
      );
      })
        
        ,
    );
  }
}

