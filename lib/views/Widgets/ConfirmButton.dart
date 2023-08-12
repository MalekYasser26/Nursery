import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/views/screens/BottomNavBarScreen.dart';
import 'package:sizer/sizer.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical :4.h),
      child: InkWell(
        child: Container(
          height: 5.h,
          width:double.infinity,
          decoration: BoxDecoration(
              color: AppColors.blueCol,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xff4a4bb7))
          ),
          child: Center(child: Text("Confirm",style: GoogleFonts.poppins(
              color: Colors.white
          ),)),


        ),
      ),
    );}
}
