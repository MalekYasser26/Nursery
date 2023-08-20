import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/views/Widgets/CircularProgressBar.dart';
import 'package:sizer/sizer.dart';

class  GradeWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final int index ;
  final double answeredQuestions;
  GradeWidget({
    required this.imagePath,
    required this.text,
    required this.index,
    required this.answeredQuestions,
  });

  @override
  Widget build(BuildContext context) {
var percentageGrade = answeredQuestionsList[index]/15*100 ;

    return Stack(
        children:[
          Card(
            elevation: 2, // Customize elevation as needed
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
                SizedBox(width: 1.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 1.0.h,left: 1.0.h,right: 1.h),
                        child: Text(
                          text,
                          style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left : 2.w,),
                        child: Row(
                          children: [
                            percentageGrade<50 ?Text(
                              "You haven't passed the quiz",
                              style: GoogleFonts.poppins(fontSize: 9.7.sp, color:
                                AppColors.darkRedCol , fontWeight: FontWeight.w400),
                            ) : Text(
                                    "You have passed the quiz",
                                    style: GoogleFonts.poppins(fontSize: 10.sp, color: (() {
                                    if (percentageGrade >= 80) {
                                    return AppColors.greenCol;
                                    } else if (percentageGrade >= 70) {
                                    return AppColors.orangeCol;
                                    } else if (percentageGrade>=50) {
                                    return AppColors.yellowCol;
                                    }else {
                                    return AppColors.darkRedCol ;
                                    }
                                    })(), fontWeight: FontWeight.w400),
                                    ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left : 2.w),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: percentageGrade < 50
                                    ? "${answeredQuestionsList[index].round()} / 15"
                                    : "${answeredQuestionsList[index].round()} / 15",
                                style: GoogleFonts.poppins(
                                  fontSize: percentageGrade < 50 ? 9.7.sp : 10.sp,
                                  color: percentageGrade < 50 ? AppColors.darkRedCol : (() {
                                    if (percentageGrade >= 80) {
                                      return AppColors.greenCol;
                                    } else if (percentageGrade >= 70) {
                                      return AppColors.orangeCol;
                                    } else if (percentageGrade >= 50) {
                                      return AppColors.yellowCol;
                                    } else {
                                      return AppColors.darkRedCol;
                                    }
                                  })(),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
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
            pointerValue: percentageGrade,
          ),
              )),
          Positioned(
              right: 6.w,
              top: 4.h,
              child: Text("${percentageGrade.round()}%",style: GoogleFonts.poppins(color: (() {
                if (percentageGrade >= 80) {
                  return AppColors.greenCol;
                } else if (percentageGrade >= 70) {
                  return AppColors.orangeCol;
                } else if (percentageGrade>=50) {
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