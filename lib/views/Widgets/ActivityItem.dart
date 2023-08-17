import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ActItem extends StatelessWidget {
  ActItem({Key? key,required this.img,required this.color,required this.time,required this.action}) : super(key: key);
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
                SizedBox(height: 1.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 75.w,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: time,
                                style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w600,color: Colors.black),
                            ),
                            TextSpan(
                              text: action,
                              style:GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Colors.black)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h,)
              ],
            ),

          ],
        )
      ],
    );
  }
}

