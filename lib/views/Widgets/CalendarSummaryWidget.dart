import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';

class CalendarSummary extends StatelessWidget {
   CalendarSummary({Key? key,required this.days,required this.status,required this.color}) : super(key: key);
  String  status ;
  int days;
  Color color ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        border: Border.all(color: color),
      ),
      child: Padding(
        padding:  EdgeInsets.all(6.w),
        child: Column(
          children: [
            Text("$days",style: GoogleFonts.poppins(fontSize: 12.sp,color: color,fontWeight: FontWeight.w600),),
            Text("days",style: GoogleFonts.poppins(fontSize: 13.sp,color: color,fontWeight: FontWeight.w600),),
            Text("$status",style: GoogleFonts.poppins(fontSize: 12.sp,color: color,fontWeight: FontWeight.w400),),
          ],
        ),
      ));

  }
}
