import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class UploadPhotoWidget extends StatelessWidget {
  const UploadPhotoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 2.0.h),
      child: DottedBorder(
        borderType: BorderType.RRect,
        dashPattern: [4.w],
        radius:Radius.circular(3.w) ,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 2.0.h),
                    child: Image.asset('assets/images/UploadPhoto.png',height: 5.h),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 2.0.h),
                    child: Text("Upload Personal Photo",style: GoogleFonts.lato(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12.sp,
                    ),),
                  )
            ],
          ),

        ),
      ),
    );
  }
}
