import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:sizer/sizer.dart';

class ClassWidget extends StatelessWidget {
  const ClassWidget({Key? key , required this.classMat,required this.classTime}) : super(key: key);
 final String classMat ;
 final String classTime ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(left :2.h , right: 2.h , top : 2.h , bottom: 1.h),
          child: Row(
            children: [
            Text("$classMat",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 13.sp),),
            Spacer(),
            Icon(Icons.watch_later, color: AppColors.blueCol,),
            Text(" $classTime",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 11.sp,color:AppColors.blueCol ),),
          ],),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 2.h),
          child: Text('Class : 6''\u1d57\u02b0',style: TextStyle(fontSize: 12.sp,color: Colors.grey)),
        )
      ],
    );
  }
}
