import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class DailyReportItem extends StatelessWidget {
   DailyReportItem({Key? key,required this.img,required this.color,required this.time,required this.action}) : super(key: key);
  String img,time,action ;
  Color color ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(height: 4.h,),
            Row(
              children: [
                CircleAvatar(
                  radius: 3.h,
                  backgroundColor:color ,
                  child: Image.asset(img,height: 7.w,)
                ),
                SizedBox(width: 2.w,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 1.h,),
                    Row(
                      children: [
                        Text(time,textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w600),softWrap: true),
                        Padding(
                          padding: EdgeInsets.only(left: 1.0.w),
                          child: SizedBox(
                              width: 50.w,
                              child: Text(action,textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w400),softWrap: true)),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h,),
                  ],
                )
              ],
            ),

          ],
        )
      ],
    );
  }
}
