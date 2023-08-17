import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/views/Widgets/ActivityItem.dart';
import 'package:nursery/views/Widgets/BasicButtonRevColors.dart';
import 'package:nursery/views/screens/BottomNavBarScreen.dart';
import 'package:nursery/views/screens/DailyReportScreen/DailyReportItem.dart';
import 'package:sizer/sizer.dart';

class DailyReportScreen extends StatelessWidget {
  const DailyReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              children: [
                SizedBox(
                  height: 1.9.h,
                ),
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
                        child: Image.asset('assets/images/notification.png',),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                        onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_back_ios,color: Colors.black45,size: 15.sp)),
                    Text(" Daily Report for Malak",
                      style: GoogleFonts.poppins(
                          textStyle:  TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp)
                      ),),
                    Spacer(),
                    Text("15 Feb 2023",
                      style: GoogleFonts.poppins(
                          textStyle:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11.sp,color: Colors.grey)
                      ),),

                  ],
                ),
                SizedBox(
                  height: 55.h,
                  width: double.infinity,
                  child: ListView.separated(
                      itemBuilder: (context, index) =>ActItem(action:ReportTXT[index] ,time:ReportTime[index] ,
                        color:ReportColors[index] ,img:ReportIcons[index] ,),
                      separatorBuilder:(context, index) =>  SizedBox(height: 1.h,),
                      itemCount: ReportTXT.length),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 12.0.w),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color :Colors.grey.shade400),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(1.w),
                      child: Text(
                        "Malak had a great afternoon painting today. She painted a lion. Tomorrow, She wants to paint again",
                        softWrap: true,
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 13.sp),
                      ),
                    ),
                  ),
                ),
                ActItem(img: AssetsData.reportImg3, color: Colors.orangeAccent, time: "3:30 pm:", action: " Malak had all of her pasta"),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 12.0.w),
                  child: Container(
                    child: Padding(
                      padding:  EdgeInsets.all(1.w),
                      child:Image.asset("assets/images/pasta.png")
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                BasicButton(route: (context) =>  BottomNavBarScreen(),
                    color: AppColors.orangeCol,
                    Textcolor: Colors.white,
                    TextSt: "Download report",
                    borderColor: Colors.transparent)





              ],
            ),
          ),
        ),
      )
    );
  }
}
