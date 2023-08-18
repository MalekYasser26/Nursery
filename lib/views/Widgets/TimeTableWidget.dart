import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/views/Widgets/ClassWidget.dart';
import 'package:sizer/sizer.dart';

class TTwidget extends StatelessWidget {
  const TTwidget({Key? key , required this.day,required this.classTime1 , required this.classMat1 , required this.classMat2, required this.classTime2}) : super(key: key);
    final String day ;
  final String classMat1 ;
  final String classTime1 ;
  final String classMat2 ;
  final String classTime2 ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$day" ,style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12.sp),),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h),
          child: Container(
            decoration: BoxDecoration(
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
            child: Column(
              children: [
                ClassWidget(classMat: "$classMat1",classTime: "$classTime1"),
                SizedBox(height :1.h),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w),
                  child: Divider(thickness: 2),
                ),
                ClassWidget(classMat: "$classMat2",classTime: "$classTime2"),
                SizedBox(height: 1.h,)
              ],
            ),
          ),
        )
      ],
    );
  }
}
