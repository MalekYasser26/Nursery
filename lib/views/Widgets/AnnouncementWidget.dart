import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:sizer/sizer.dart';

class AnnounceWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final String date;
  final String time;
  final String questions;
  AnnounceWidget({
    required this.imagePath,
    required this.text,
    required this.date,
    required this.time,
    this.questions = "15",
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Card(
        elevation: 4, // Customize elevation as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.all(2.h),
              child: Image.asset(
                height: 6.h,
                fit: BoxFit.fill,
                imagePath,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.all(1.0.h),
                    child: Text(
                      text,
                      style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal : 1.h),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_month,color: Colors.grey,size: 16.sp),
                        Text(
                          " $date",
                          style: GoogleFonts.poppins(fontSize: 10.sp, color: Colors.grey),
                        ),
                        SizedBox(width: 6.w,),
                        Icon(Icons.watch_later,color: Colors.grey,size: 16.sp),
                        Text(
                          " $time",
                          style: GoogleFonts.poppins(fontSize: 10.sp, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
        Positioned(
            right: 6.w,
            top: 1.5.h,
            child: Text("${questions} Questions",style: GoogleFonts.poppins(color: AppColors.blueCol,),))
    ]
    );
  }
}
