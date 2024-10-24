


// import 'package:flutter/material.dart';

// class Profile extends StatefulWidget {
//   const Profile({super.key});

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('this is the Profile page'),
//     );
//   }
// }

import 'package:brillosports/colors/colors.dart';
import 'package:brillosports/core/screen_utils.dart';
import 'package:brillosports/widgets/apptexts/apptext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _showbalance = true;
  @override
  Widget build(BuildContext context) {
    final screenUtils = ScreenUtils(context);
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                "assets/dashboard/dashboard.png",
                fit: BoxFit.cover,
              ),
            ),
            // Overlaying Widgets
            // Padding(
            //   padding:
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: screenUtils.screenHeight * 0.1,
                  horizontal: screenUtils.screenWidth * 0.06 // Adjust as needed
                  // horizontal: screenUtils.defaultWidth * 0.1, // Adjust as needed
                  ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/dashboard/image.png"),
                      const SizedBox(width: 8.0),
                      AppText(
                        bold: false,
                        fontSize: 12,
                        text: "Eto David",
                        textColor: AppColors.appOrange,
                      ),
                      const Spacer(),
                      //  const   SizedBox(width: 10,),
      
                      SvgPicture.asset("assets/dashboard/notification.svg")
                    ],
                  ),
      
                  const SizedBox(
                    height: 25,
                  ),
      
                  //display board
      
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/dashboard/displayboard.png"),
                        fit: BoxFit
                            .cover, // Adjust how the image fills the container
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        AppText(
                          bold: true,
                          fontSize: 14,
                          text: "Sports Wallet Balance",
                          textColor: AppColors.whiteColor,
                          // color : AppColors.whiteColor,
                        ),
                     
      
                        Row(
                          children: [
                            const SizedBox(width: 30),
                            AppText(
                              bold: true,
                              fontSize: 25,
                              text: _showbalance ? "₦ 500,000.00" : "********",
                              textColor: AppColors.whiteColor,
                            ),
                            const Spacer(),
                           
                            IconButton(
                              icon: Icon(_showbalance
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              color: AppColors.whiteColor,
                              onPressed: () {
                                setState(() {
                                  _showbalance = !_showbalance;
                                });
                                print(
                                    _showbalance); // This should toggle between true and false
                              },
                            ),
                          ],
                        ),
      
                        const SizedBox(
                          height: 5,
                        ),

                         Row(
                            children: [
                              AppText(
                              bold: true,
                              fontSize: 15,
                              text: "Favourite Sports: ",
                              textColor: AppColors.whiteColor,
                            
                            ),
                              
                              AppText(
                              bold: false,
                              fontSize: 15,
                              text: "Football",
                              textColor: AppColors.whiteColor,
                            
                            ),]
                          ),


                           Row(
                            children: [
                              AppText(
                              bold: true,
                              fontSize: 15,
                              text: "Phone Number: ",
                              textColor: AppColors.whiteColor,
                            
                            ),
                              
                              AppText(
                              bold: false,
                              fontSize: 15,
                              text: "08039907187",
                              textColor: AppColors.whiteColor,
                            
                            ),]
                          ),

               
                        // Row(
                        //   children: [
                        //     BlueElevatedDashbooardButton(
                        //         widget: SvgPicture.asset(
                        //             "assets/dashboard/instantsavebutton.svg"),
                        //         onPressed: () {}),
                        //     const Spacer(),
                        //     WhiteElevatedDashbooardButton(
                        //         widget: SvgPicture.asset(
                        //             "assets/dashboard/steadysave.svg"),
                        //         onPressed: () {})
                        //   ],
                        // )
                      ],
                    ),
                  ),
      
                  // Add more widgets here as needed
                ],
              ),
            ),
               Column(children: [


                        


                         
                          
                        ],)
          ],
        ),
      ),
    );
  }
}
