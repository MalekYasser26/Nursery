import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/features/activities_View/activities-view.dart';
import 'package:nursery/views/screens/BottomNavBarScreen.dart';
import 'package:nursery/views/screens/HomeScreen/HomeScreen.dart';
import 'package:sizer/sizer.dart';

class FillFormConfirm extends StatelessWidget {
  const FillFormConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
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
                  Center(child: Stack(children: [
                    Image.asset('assets/images/confirmPhoto.png',height: 28.h),
                  ])),
                  SizedBox(height: 4.h,),
                  Text("Form Confirmed",style: GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w600)),
                  Text("Answer has been sent successfully!",style: GoogleFonts.poppins(fontSize: 12.sp,color: Colors.grey)),
                ],
              ),
              Positioned(
                left: 7.w,
                top: 24.h,
                child: CircleAvatar(
                  backgroundColor: greenColor,
                  radius: 2.h,

                ),),
              Positioned(
                right: 16.w,
                top: 27.h,
                child: CircleAvatar(
                  backgroundColor: greenColor,
                  radius: 10.sp,

                ),),
              Positioned(
                left: 15.w,
                top: 38.h,
                child: CircleAvatar(
                  backgroundColor: greenColor,
                  radius: 8.sp,

                ),),
              Positioned(
                right: 20.w,
                top: 45.h,
                child: CircleAvatar(
                  backgroundColor:greenColor ,
                  radius: 5.sp,

                ),),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>  BottomNavBarScreen()));
                      },
                      child: Container(
                        height:7.h,
                        width:87.w,
                        decoration:  BoxDecoration(
                          border: Border.all(color: KPrimaryColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child:   Center(
                          child: Text("Return to home",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: KPrimaryColor
                              ),),
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
              ),
            ]
        ),
      ),
    );
  }
}
