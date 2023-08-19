import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:sizer/sizer.dart';

class CalendarEvent extends StatelessWidget {
   CalendarEvent({Key? key, required this.date,required this.date2 ,required this.header, required this.subtext,required this.time,required this.img}) : super(key: key);
  final String date ;
  final String date2 ;
  final String header ;
  final String subtext ;
  final String time ;
  final String img ;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 2.h,),
            Container(
              width: double.infinity,
              height: 7.h,
              color: AppColors.orangeCol,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$date",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 14.sp)),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                child: Image.asset(img,fit: BoxFit.cover,)),
          ],
        ),
        Positioned(
          top: 0,
          left: 10.w,
          child: Container(
            height: 4.h,
            width: 3.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.orangeCol,
                border: Border.all(color: Colors.white,width: 2)
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 10.w,
          child: Container(
            height: 4.h,
            width: 3.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.orangeCol,
                border: Border.all(color: Colors.white,width: 2)
            ),
          ),
        ),
        Positioned(
            bottom: 17.h,
            left: 5.w,
            child: Text("$header",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 15.sp),)),
        Positioned(
          bottom: 9.h,
          left: 5.w,
          child: Container(
            child: Text("$subtext",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 10.sp),softWrap: true),
          ),
        ),
        Positioned(
          bottom: 2.h,
          left: 5.w,
          child: Container(
           child: Row(

             children: [
                Icon(Icons.calendar_month,color: Colors.white,),
               SizedBox(width: 2.w,),
               Text("$date2",style: GoogleFonts.poppins(color: Colors.white)),
               SizedBox(width: 5.w,),
               Icon(Icons.watch_later, color: Colors.white),
               SizedBox(width: 2.w,),
               Text("$time",style: GoogleFonts.poppins(color: Colors.white))
             ],
           ),
          ),
        ),
      ],
    );
  }
}
