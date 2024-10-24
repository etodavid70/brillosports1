
import 'package:brillosports/colors/colors.dart';
import 'package:brillosports/widgets/bottomnavbar/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:backupcash/app_resources/colors/colors.dart';
// import 'package:backupcash/app_resources/reusable_widgets/navbar/controller.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class AppBottomNav extends StatelessWidget {
  final BottomNavController _dashboardcontroller =  Get.put(BottomNavController());
  final int currentIndex;
  final Function(int) onTap;

  AppBottomNav({
    Key? key,
    this.currentIndex = 0,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
      return BottomNavigationBar(
        
        selectedItemColor: AppColors.appOrange,

      
        currentIndex: currentIndex,
        onTap: onTap,
        selectedLabelStyle:const TextStyle(
          fontFamily: "quicksand"
        ),
        unselectedLabelStyle: const  TextStyle(
          fontFamily: "quicksand"
        ),
        // onTap: (int index) {
        //   _dashboardcontroller.onTabTapped(index);
        //   _dashboardcontroller.changeIndex(index);
        //   print(index);
        //   print(_dashboardcontroller.currentIndex.value);
        // },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: 'Profile',
            
          ),
          BottomNavigationBarItem(
          icon: ImageIcon(
              AssetImage('assets/presplash/discover.png'),
            ),
            label: 'Discover',
          ),
        
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/presplash/bidding.png'),
            ),
            label: 'Buddies',
          ),

           BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings and Privacy',
          ),
        ],
      );
    
  }
}
