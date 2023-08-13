import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/views/Widgets/BasicButtonRevColors.dart';
import 'package:nursery/views/Widgets/RequestWidgets.dart';
import 'package:nursery/views/screens/QRScreen/QRScreen.dart';
import 'package:sizer/sizer.dart';

import '../../Widgets/CardWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 60.w,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Container(
              padding: EdgeInsets.only(top: 1.h,),
              child: Row(
                children: [
                  SizedBox(width: 6.w,),
                  Image.asset('assets/images/Login/LogoFull.png'),
                  SizedBox(width: 3.w,),

                  Text("Rouse Berry",style: GoogleFonts.josefinSans(color:AppColors.blueCol,fontSize: 15.sp),)
                ],
              )),
          actions: [
            Padding(
              padding:  EdgeInsets.all(1.0.h),
              child: Container(

                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                ),
                child: Icon(Icons.notifications,color:AppColors.blueCol,size: 24.sp),
              ),
            ),
            SizedBox(width: 5.w,)
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4.0.w),
            child: Stack(
              children:[
                Container(
            height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                        SizedBox(
                  height: 4.h,
              ),
                        Column(
                  children: [
                    Row(children: [
                      Text("Please select your child",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600),),
                      Spacer(),
                      Text("15 Feb 2023",style: GoogleFonts.poppins(color: Colors.grey,fontWeight: FontWeight.w400),),
                    ],),
                    Row(
                      children: [
                        Image.asset(AssetsData.girl,width: 43.w,height: 14.h),
                        SizedBox(width: 5.w,),
                        Image.asset(AssetsData.boy,width: 43.w,height: 20.h,),
                      ],

                    )

                  ],
              ),
                       Text("What's Malak doing now ?",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600),),
                       Container(
                         decoration: const BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.all(
                             Radius.circular(10),
                           ),
                           boxShadow: [
                             BoxShadow(
                               color: Color(0xffDDDDDD),
                               blurRadius: 6.0,
                               spreadRadius: 2.0,
                               offset: Offset(0.0, 0.0),
                             )
                           ],
                         ),
                         height: 17.h,
                         width: double.infinity,
                         child: ImageTextSubtextWidget(
                           date: "09:00 am - 10:00 am",
                           imagePath: AssetsData.boarding1,
                           text: 'Water color painting class',
                           subtext: 'Watercolor classes provide instruction\n'
                               'and inspiration for those who want to'
                               ' \nlearn about the medium.',
                         ),
                       ),
                       SizedBox(height: 2.h,),
                       BasicButtonRevColor(builder: (context) =>QRScreen() ,
                           color: AppColors.blueCol,Textcolor: Colors.white , TextSt: "View daily report",borderColor: Colors.transparent),
                       SizedBox(height: 1.h,),
                       BasicButtonRevColor(builder: (context) =>QRScreen() ,
                           color: Colors.orangeAccent,Textcolor: Colors.white , TextSt: "Access live camera",borderColor: Colors.transparent),
                       SizedBox(height: 2.h,),
                       GridView.builder(
                         physics: NeverScrollableScrollPhysics(),
                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                         itemCount: 6,
                         shrinkWrap: true,
                         itemBuilder: (context, index) {
                           return Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: RequestWidgets(index: index),
                           );
                         },
                       ),
                       Row(
                         children: [
                           Text("Gallery",style: GoogleFonts.poppins(fontSize: 15.sp),),
                           Spacer(),
                           Text("See all",style: GoogleFonts.poppins(fontSize: 15.sp,color: AppColors.blueCol),),

                         ],
                       ),



                     ],

                  ),
                ),

                Positioned(
                  left: 36.w,
                  top: 10.h,
                  child : Icon(Icons.check_box,color:AppColors.blueCol,),),
              ],
            ),
          ),
        ),




      ),
    );

  }
}