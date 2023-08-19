import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/views/Widgets/BasicButtonRevColors.dart';
import 'package:nursery/views/screens/CalendarScreen/CalendarScreen.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../constants/constants.dart';

class DiaperView extends StatelessWidget {
  const DiaperView({Key? key}) : super(key: key);
  static const String routeName="DiaperView";
  @override
  Widget build(BuildContext context) {
    String bullet = "\u2022 ";
    
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal : 4.w),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/name.png',height: 10.h,width: 10.w,),
                  SizedBox(width: 2.w,),
                  Text('Rouse Berry',style: GoogleFonts.josefinSans(
                      textStyle:const TextStyle(color: AppColors.blueCol),fontWeight: FontWeight.w500,fontSize: 14.sp),),
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
              SizedBox(height: 1.h,),
              Row(
                children: [
                  InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_back_ios,color: AppColors.blueCol,size: 15.sp)),
                  Text(" Diaper",
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
                height: 2.h,
              ),
              SizedBox(
                height: 9.h,
                child: BasicButton(route: (context) => CalendarScreen(), color: AppColors.orangeCol,
                    Textcolor: Colors.white, TextSt: "2 Wet", borderColor: Colors.transparent , textSize: 16.sp),
              ),
              SizedBox(height: 2.h,),
              SizedBox(
                height: 9.h,
                child: BasicButton(route: (context) => CalendarScreen(), color: AppColors.orangeCol,
                    Textcolor: Colors.white, TextSt: "1 Dirty", borderColor: Colors.transparent , textSize: 16.sp),
              ),
              SizedBox(height: 2.h,),
              Container(
                decoration:   BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
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
                width: double.infinity,
                child: Padding(
                  padding:  EdgeInsets.all(4.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${bullet} Diaper is leak" , style:GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 13.sp) ,),
                      Text("${bullet} Diaper is cream" , style:GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 13.sp) ,),
                      Text("${bullet} Quantity: Medium" , style:GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 13.sp) ,),
                    ],
                  ),
                ),

              )

            ],
          ),
        ),
      ),
    );
  }
}
