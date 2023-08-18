import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/views/Widgets/CircularProgressBar.dart';
import 'package:sizer/sizer.dart';

class  GradeWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final int index ;
  GradeWidget({
    required this.imagePath,
    required this.text,
    required this.index,
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
                      Padding(
                        padding: EdgeInsets.only(left : 2.w),
                        child: Row(
                          children: [
                            gradeMarks[index]<50 ?Text(
                              "You haven't passed the quiz",
                              style: GoogleFonts.poppins(fontSize: 9.7.sp, color:
                                AppColors.darkRedCol , fontWeight: FontWeight.w400),
                            ) : Text(
                                    "You have passed the quiz",
                                    style: GoogleFonts.poppins(fontSize: 10.sp, color: (() {
                                    if (gradeMarks[index] >= 80) {
                                    return AppColors.greenCol;
                                    } else if (gradeMarks[index] >= 70) {
                                    return AppColors.orangeCol;
                                    } else if (gradeMarks[index]>=50) {
                                    return AppColors.yellowCol;
                                    }else {
                                    return AppColors.darkRedCol ;
                                    }
                                    })(), fontWeight: FontWeight.w400),
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
              right: 1.w,
              top: 2.h,
              child: SizedBox(
                height: 7.h,
                width: 20.w,
                child: CircularProgressBar(
            pointerValue: gradeMarks[index],
          ),
              )),
          Positioned(
              right: 6.w,
              top: 4.h,
              child: Text("${gradeMarks[index].round()}%",style: GoogleFonts.poppins(color: (() {
                if (gradeMarks[index] >= 80) {
                  return AppColors.greenCol;
                } else if (gradeMarks[index] >= 70) {
                  return AppColors.orangeCol;
                } else if (gradeMarks[index]>=50) {
                  return AppColors.yellowCol;
                }else {
                  return AppColors.darkRedCol ;
                }
              })(),
              fontSize: 13.sp,
                fontWeight: FontWeight.w400
              )),
              ),
        ]
    );
  }
}