import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';
import 'BasicTextFF.dart';
import 'ExtendedWidgetElse.dart';
import 'UploadPhotoWidget.dart';

class ExtendedWidget extends StatefulWidget {
  const ExtendedWidget({Key? key}) : super(key: key);

  @override
  State<ExtendedWidget> createState() => _ExtendedWidgetState();

}

class _ExtendedWidgetState extends State<ExtendedWidget> {
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 8),
      child: Container(
        child: Column(
          children: [
            BasicTextFF(fftext: "EX. 3 days",),
            Container(
              width: double.infinity,
              color: AppColors.blueCol.withOpacity(0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 8.sp,right : 4.sp , top: 5.sp , bottom: 5.sp),
                    child: Text("Notes :",style: GoogleFonts.poppins(
                        color: AppColors.blueCol
                    )),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.sp,vertical: 2.sp),
                    child: Text("- Day fees is different from month fees",style: GoogleFonts.poppins(
                        color: AppColors.blueCol

                    )),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.sp,vertical: 2.sp),
                    child: Text("- Day costs 50 EGP",style: GoogleFonts.poppins(
                        color: AppColors.blueCol

                    )),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 8.sp, top: 2.sp , bottom: 5.sp),
                    child: Text("- Month costs 850 EGP",style: GoogleFonts.poppins(
                        color: AppColors.blueCol

                    )),
                  ),
                ],
              ),
            ),
            BasicTextFF(fftext: "Time he will take him",suffix:(Icons.keyboard_arrow_down),
      ),
            Divider(thickness: 2),
            Row(
              children: [
                Text("Who will recieve him ",style: GoogleFonts.poppins(
                    fontSize: 12.sp,fontWeight: FontWeight.w500
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Radio<int>(
                        activeColor: AppColors.blueCol,
                        visualDensity: VisualDensity(horizontal: -4),
                        value: 1,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                      Text(
                        "Me",
                        style: GoogleFonts.poppins(
                          color: selectedOption == 1 ? AppColors.blueCol : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Radio<int>(
                        activeColor: AppColors.blueCol,
                        visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                        value: 2,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                      Text(
                        "Someone Else",
                        style: GoogleFonts.poppins(
                          color: selectedOption == 2 ? AppColors.blueCol : Colors.black,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ExtendedWidgetElse(),
          ],
        ),
      ),
    );
  }
}
/*[

          ],*/