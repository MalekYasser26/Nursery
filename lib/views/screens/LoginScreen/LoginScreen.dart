import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/views/Widgets/EmailWidgetLogin.dart';
import 'package:nursery/views/Widgets/LoginSubmitButton.dart';
import 'package:nursery/views/Widgets/PasswordWidgetLogin.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checked = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Stack(
          children:[
            Column(
            children: [
                  Image.asset('assets/images/Login/LogoFull.png',height: 10.h),
                  Padding(
                    padding:  EdgeInsets.only(top: 2.h,bottom: 1.h),
                    child: Text("Let’s get started",style: GoogleFonts.josefinSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.w),
                    child: Text("We bring parents closer and lets you focus \n on growing your childcare business.",style: GoogleFonts.josefinSans(
                      fontSize: 13.sp ,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400
                    ), textAlign: TextAlign.center,),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(top: 7.h,left: 6.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Username",style: GoogleFonts.josefinSans(fontWeight: FontWeight.w600,
                        fontSize: 13.sp),)
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 3.w),
                    child: const EmailWidgetLogin(),
                  ),
                   SizedBox(height: 3.h,),
                  Padding(
                padding:  EdgeInsets.only(left: 6.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Password",style: GoogleFonts.josefinSans(fontWeight: FontWeight.w600,
                        fontSize: 13.sp),)
                  ],
                ),
              ),
                  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 3.w),
                child: const PassWidgetLogin(),
              ),
                  Padding(
                    padding:  EdgeInsets.only(left: 2.0.w,right: 5.w),
                    child: Row(
                      children: [
                        InkWell(
                           onTap: () {
                               setState(() {
                                 checked  = !checked;
                               });
                             },
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 3.0.w),
                            child: Row(
                              children: [
                                checked ? const Icon(
                                    Icons.check_box,color: Colors.green,
                                  ) : const Icon( Icons.check_box_outline_blank,),

                                Text(" Keep me logged in",style:GoogleFonts.josefinSans(
                                  fontSize:12.sp,

                                ) ,)
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text("Forgot Password?",style:GoogleFonts.josefinSans(
                          fontSize:12.sp,
                          color: AppColors.blueCol
                        ) ,)




                      ],
                    ),
                  ),

                  const LoginButton(),



                ],

          ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset('assets/images/Login/blueCircle.png'),width:65.w,),
            Positioned(
              bottom: 0,
              left: 30.w,
              child: Image.asset('assets/images/Login/orangeCircle.png',width: 45.w),
            ),   // Circle animation
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset('assets/images/Login/purpleCircle.png',),width:50.w,),
        ]),
      ),
    );
  }
}
