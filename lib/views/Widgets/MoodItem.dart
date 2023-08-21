import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';

class MoodItem extends StatelessWidget {
   MoodItem({Key? key,required this.img,required this.color,required this.time,required this.action}) : super(key: key);
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
                  children: [
                    Text(time,textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 4.w,fontWeight: FontWeight.w600),softWrap: true),
                    SizedBox(width:1.w),
                    Text(action,textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 3.5.w,fontWeight: FontWeight.w400),softWrap: true),
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
