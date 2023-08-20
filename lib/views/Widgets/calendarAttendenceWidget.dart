import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';

class CalendarAttendance extends StatelessWidget {
   CalendarAttendance({Key? key,required this.text,required this.color}) : super(key: key);
  Color color ;
  String text ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.circle,color: color,size: 2.h),
        SizedBox(width: 1.w,),
        Text(text,style: GoogleFonts.poppins(fontSize: 15.sp,fontWeight: FontWeight.w500),),
      ],
    );
  }
}
