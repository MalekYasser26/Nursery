import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/features/onboarding_screen/presentation/models/onboarding_model.dart';
import 'package:nursery/views/screens/LoginScreen/LoginScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final pageController = PageController();
  int currentIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children:<Widget> [
            PageView.builder(
              controller: pageController,
              itemCount: boardingItems.length,
              onPageChanged: (index){
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context,index){
                return Stack(
                  alignment: Alignment.center,
                  children:
                  [
                    Image.asset(
                      boardingItems[index].image,fit:BoxFit.fill ,width: double.infinity.w,),
                  ],
                );
              },
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 12.5.h,),
              Text(' We bring parents closer\n   and lets you focus on\n  growing your childcare\n              business .',
               style: GoogleFonts.montserrat(
                 textStyle:  TextStyle(color:Colors.white,
                     fontSize: 21.sp,
                     fontWeight: FontWeight.w700),),
               ),
               const Spacer(),
              SmoothPageIndicator(
                controller: pageController,
                count:  4,
                axisDirection: Axis.horizontal,
                effect:  const ExpandingDotsEffect(
                  expansionFactor: 5,
                    spacing:  8.0,
                    radius: 5,
                    dotWidth:  8.0,
                    dotHeight:  8.0,
                    dotColor:Colors.grey,
                    activeDotColor: Colors.white
                ),
              ),
               SizedBox(
                height:3.5.h,),
               InkWell(
                 onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                 },
                 child: Container(
                   height:7.h,
                   width:87.w,
                   decoration:  BoxDecoration(
                       borderRadius: BorderRadius.circular(8),
                       color: KPrimaryColor
                   ),
                   child: Center(
                     child: Text("Login",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white
                        ),),
                      ),
                   ),
                 ),
               ),
                SizedBox(height: 4.5.h,)
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}