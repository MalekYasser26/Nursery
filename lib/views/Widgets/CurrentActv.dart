import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CurrentActv extends StatelessWidget {
  final String imagePath;
  final String text;
  final String date;
  final String subtext;

  CurrentActv({
    required this.imagePath,
    required this.text,
    required this.date,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 1.0.h,horizontal: 2.w),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.sp)
            ),
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
              width: 30.w,
              child: Image.asset(
                imagePath,
                height: double.infinity, // Takes the full available height
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(width: 1.w), // Add spacing between image and text
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 1.2.h,),
             Text(
                    text,
                    style: GoogleFonts.poppins(fontSize: 4.w, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    date,
                    style: GoogleFonts.poppins(fontSize: 4.w, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    subtext,
                    style: GoogleFonts.poppins(fontSize: 2.8.w, color: Colors.grey,fontWeight: FontWeight.w300),
                ),

          ],
        ),


      ],
    );
  }
}
