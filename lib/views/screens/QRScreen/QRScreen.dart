import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/views/Widgets/BasicButtonRevColors.dart';
import 'package:nursery/views/screens/BottomNavBarScreen.dart';
import 'package:nursery/views/screens/HomeScreen/HomeScreen.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/constants.dart';

class QRScreen extends StatelessWidget {
  const QRScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:  EdgeInsets.all(6.0.w),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffDDDDDD),
                    blurRadius: 6.0,
                    spreadRadius: 2.0,
                    offset: Offset(0.0, 0.0),
                  )
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 1.h,),
                    Text("Booking Request QR Code",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 18.sp),),
                    Image.asset("assets/images/QR.png"),
                  ],
                )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.w, right: 6.w, bottom: 4.h),
            child: Column(
              children: [
                BasicButton(route: (context) => BottomNavBarScreen(),
                  color: AppColors.blueCol,Textcolor: Colors.white,TextSt: "Download QR Code",borderColor: Colors.transparent,),
                SizedBox(height: 2.h,),
                BasicButton(route: (context) => BottomNavBarScreen(),
                  color: Colors.transparent,Textcolor: AppColors.blueCol,TextSt: "Return to home",borderColor: AppColors.blueCol,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
