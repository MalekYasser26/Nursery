import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/views/Widgets/BasicButtonRevColors.dart';
import 'package:nursery/views/Widgets/ConfirmButton.dart';
import 'package:nursery/views/screens/QRScreen/QRScreen.dart';
import 'package:sizer/sizer.dart';

class ConfirmScreen extends StatelessWidget {
   ConfirmScreen({Key? key,required this.msgButton , required this.submsgButton}) : super(key: key);
  String msgButton;
  String submsgButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.0.w),
                child: Row(
                  children: [
                    Image.asset('assets/images/name.png',height: 10.h,width: 10.w,),
                    SizedBox(width: 2.w,),
                    Text('Rouse Berry',style: GoogleFonts.josefinSans(
                        textStyle:const TextStyle(color: Color(0xff225C8B)),fontWeight: FontWeight.w500,fontSize: 18),),
                  ],
                ),
              ),
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
          left: 7.w,
            top: 24.h,
            child: CircleAvatar(
              backgroundColor: AppColors.lightgreenCol,
              radius: 2.h,

            ),),
          Positioned(
          right: 16.w,
            top: 27.h,
            child: CircleAvatar(
              backgroundColor: AppColors.lightgreenCol,
              radius: 10.sp,

            ),),
          Positioned(
          left: 15.w,
            top: 38.h,
            child: CircleAvatar(
              backgroundColor: AppColors.lightgreenCol,
              radius: 8.sp,

            ),),
          Positioned(
            right: 20.w,
            top: 45.h,
            child: CircleAvatar(
              backgroundColor: AppColors.lightgreenCol,
              radius: 5.sp,

            ),),
           Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 5.0.w,vertical: 2.h),
                  child: BasicButton(route: (context) =>QRScreen() , color: AppColors.blueCol, Textcolor: Colors.white, TextSt: "View My QR Code", borderColor: Colors.transparent),
                ),


              ],

          ),



        ]
      ),
    );
  }
}
