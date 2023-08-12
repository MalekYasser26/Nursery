import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursrey/constants/constants.dart';
import 'package:nursrey/views/Widgets/BasicButton.dart';
import 'package:nursrey/views/Widgets/ConfirmButton.dart';
import 'package:nursrey/views/screens/QRScreen/QRScreen.dart';
import 'package:sizer/sizer.dart';

class ConfirmScreen extends StatelessWidget {
   ConfirmScreen({Key? key,required this.msgButton , required this.submsgButton}) : super(key: key);
  String msgButton;
  String submsgButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Center(child: Image.asset('assets/images/Confirm.png',height: 28.h)),
              SizedBox(height: 4.h,),
              Text(msgButton,style: GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w600)),
              Text(submsgButton,style: GoogleFonts.poppins(fontSize: 12.sp,color: Colors.grey)),
            ],
        ),
          Positioned(
          left: 8.w,
            top: 8.h,
            child: CircleAvatar(
              backgroundColor: AppColors.greenCol,
              radius: 2.h,

            ),),
          Positioned(
          right: 16.w,
            top: 10.h,
            child: CircleAvatar(
              backgroundColor: AppColors.greenCol,
              radius: 10.sp,

            ),),
          Positioned(
          left: 18.w,
            top: 28.h,
            child: CircleAvatar(
              backgroundColor: AppColors.greenCol,
              radius: 8.sp,

            ),),
          Positioned(
            right: 20.w,
            top: 35.h,
            child: CircleAvatar(
              backgroundColor: AppColors.greenCol,
              radius: 5.sp,

            ),),
           Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BasicButton(builder: (context) => QRScreen(),text: "View My QR Code"),


              ],

          ),



        ]
      ),
    );
  }
}
