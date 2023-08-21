import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/views/screens/BottomNavBarScreen.dart';
import 'package:sizer/sizer.dart';
class QrScreen extends StatelessWidget {
  const QrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/name.png',height: 10.h,width: 10.w,),
                SizedBox(width: 2.w,),
                Text('Rouse Berry',style: GoogleFonts.josefinSans(
                    textStyle:const TextStyle(color: Color(0xff225C8B)),fontWeight: FontWeight.w500,fontSize: 18),),
              ],
            ),
            Container(
                padding: const EdgeInsets.only(left: 5),
                height: 37.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.3),
                      blurRadius: 5.0, // soften the shadow
                      spreadRadius: 1, //extend the shadow
                      offset: const Offset(
                        2.0, // Move to right 5  horizontally
                        2.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8.sp),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text("Booking Request QR Code",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,fontSize: 18
                            )
                        ),),
                      Image.asset("assets/images/qrphoto.png",width: 60.w),
                    ],
                  ),
                )
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomNavBarScreen()));
              },
              child: Container(
                height:7.h,
                width:87.w,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: KPrimaryColor,
                ),
                child:   Center(
                  child: Text("Download qr code",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white
                      ),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            InkWell(
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomNavBarScreen()));
              },
              child: Container(
                height:7.h,
                width:87.w,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: KPrimaryColor)
                ),
                child:   Center(
                  child: Text("Return to home",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color:KPrimaryColor
                      ),),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
