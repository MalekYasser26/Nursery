import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/views/Widgets/AnnouncementWidget.dart';
import 'package:nursery/views/Widgets/BasicButtonRevColors.dart';
import 'package:nursery/views/Widgets/GalleryWidget.dart';
import 'package:nursery/views/Widgets/RequestWidgets.dart';
import 'package:nursery/views/screens/DailyReportScreen/dailyreport.dart';
import 'package:nursery/views/screens/QRScreen/QRScreen.dart';
import 'package:sizer/sizer.dart';

import '../../Widgets/CurrentActv.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4.w),
            child: Stack(
              children:[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                        SizedBox(
                  height: 1.9.h,
              ),
                        Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/name.png',height: 10.h,width: 10.w,),
                        SizedBox(width: 2.w,),
                        Text('Rouse Berry',style: GoogleFonts.josefinSans(
                            textStyle:const TextStyle(color: Color(0xff225C8B)),fontWeight: FontWeight.w500,fontSize: 14.sp),),
                        const Spacer(),
                        InkWell(
                          onTap: (){
                          },
                          child: Container(
                            height: 4.h,
                            width: 8.w,
                            decoration:   BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                              boxShadow:  [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(.3),
                                  blurRadius: 5.0,
                                  spreadRadius: 1,
                                  offset: const Offset(
                                    2.0,
                                    2.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.asset('assets/images/notification.png',),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Please select your child",
                          style: GoogleFonts.poppins(
                              textStyle:  TextStyle(fontWeight: FontWeight.w600,fontSize: 12.sp)
                          ),),
                        Text("15 Feb 2023",
                          style: GoogleFonts.poppins(
                              textStyle:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11.sp,color: Colors.grey)
                          ),),

                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 15.h,
                          width: 42.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Image.asset('assets/images/Girl.png',width:double.infinity),
                        ),
                        const Spacer(),
                        Container(
                          height: 15.h,
                          width: 42.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/images/boy.png',width: double.infinity,),
                        )
                      ],
                    ),
                  ],
              ),
                       SizedBox(height : 1.h),
                       Text("What's Malak doing now ?",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600 , fontSize: 5.w),),
                       SizedBox(height : 1.h),
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
                         child: CurrentActv(
                           date: "09:00 am - 10:00 am",
                           imagePath: AssetsData.boarding1,
                           text: 'Water color painting class',
                           subtext: 'Watercolor classes provide instruction\n'
                               'and inspiration for those who want to'
                               ' \nlearn about the medium.',
                         ),
                       ),
                       SizedBox(height: 2.h,),
                       BasicButton(route: (context) =>DailyReportScreen() ,
                           color: AppColors.blueCol,Textcolor: Colors.white , TextSt: "View daily report",borderColor: Colors.transparent),
                       SizedBox(height: 1.h,),
                       BasicButton(route: (context) =>QRScreen() ,
                           color: Colors.orangeAccent,Textcolor: Colors.white , TextSt: "Access live camera",borderColor: Colors.transparent),
                       SizedBox(height: 2.h,),
                       GridView.builder(
                         physics: NeverScrollableScrollPhysics(),
                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                         itemCount: 6,
                         shrinkWrap: true,
                         itemBuilder: (context, index) {
                           return Padding(
                             padding:  EdgeInsets.all(1.h),
                             child: RequestWidgets(index: index),
                           );
                         },
                       ),
                       SizedBox(height: 1.h,),
                       Row(
                         children: [
                           Text("Gallery",style: GoogleFonts.poppins(fontSize: 15.sp,fontWeight: FontWeight.w600),),
                           Spacer(),
                           Text("See all",style: GoogleFonts.poppins(fontSize: 13.sp,color: AppColors.blueCol),),

                         ],
                       ),
                       SizedBox(height: 2.h,),
                       SizedBox(
                         height: 15.h,
                         child: ListView.separated(
                           shrinkWrap: true,
                           scrollDirection: Axis.horizontal,
                             itemBuilder:(context, index) =>  GalleryWidget(Imgpath: GalleryList[index]),
                             separatorBuilder: (context, index) => SizedBox(width: 3.w,height: 2.h,),
                             itemCount: 3),
                       ),
                       SizedBox(height: 2.h,),
                       Text("Announcements",style: GoogleFonts.poppins(fontSize: 15.sp,fontWeight: FontWeight.w600),),
                       AnnounceWidget(imagePath: AssetsData.logo, text: "Next parenting meeting", date: "18 Feb 2023",time: "10:00 am",),
                       SizedBox(height: 1.h,),
                       AnnounceWidget(imagePath: AssetsData.logo, text: "Children’s Day", date: "15 Mar 2023",time: "08:00 am",),
                       SizedBox(height: 1.h,),
                       AnnounceWidget(imagePath: AssetsData.logo, text: "Annual Day", date: "18 Feb 2023",time: "08:00 am",)






                     ],

                  ),
                ),

                Positioned(
                  left: 35.w,
                  top: 16.h,
                  child : Icon(Icons.check_box,color:AppColors.blueCol,),),
              ],
            ),
          ),
        ),
      ),




    );

  }
}