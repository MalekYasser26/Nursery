import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/onboarding_view.dart';
import 'package:nursery/views/screens/LoginScreen/LoginScreen.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/constants.dart';
import '../../Animations/SplashSCAnimations.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late final CustAnimation AnimatedController;
  late final CustAnimation CircAnimatedController;
  late final CustAnimation BottomLogoAnimatedController;
  late final CustAnimation ShapesAnimatedController;

  @override
  void initState() {
    super.initState();
    final animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    final CircanimationController = AnimationController(vsync: this, duration: Duration(milliseconds: 2500));
    final BottomLogoAnimationController = AnimationController(vsync: this, duration: Duration(milliseconds: 2700));
    final ShapesAnimationController = AnimationController(vsync: this, duration: Duration(seconds: 3));
    AnimatedController = CustAnimation(animationController);
    CircAnimatedController = CustAnimation(CircanimationController);
    BottomLogoAnimatedController = CustAnimation(BottomLogoAnimationController);
    ShapesAnimatedController = CustAnimation(ShapesAnimationController);
    // Start the animations
    animationController.forward();
    CircanimationController.forward();
    BottomLogoAnimationController.forward();
    ShapesAnimationController.forward();
    Future.delayed(Duration(milliseconds:4300 ),
          () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>OnBoardingView() ,)),
    );
  }

  @override
  void dispose() {
    AnimatedController.dispose();
    CircAnimatedController.dispose();
    BottomLogoAnimatedController.dispose();
    ShapesAnimatedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Stack(
          children:[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                child: Column(
                  children: [
                    SlideTransition(
                      position: BottomLogoAnimatedController.ptdAnimation,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 46.w,
                          ),
                          Image.asset('assets/images/toplogo.png', width: 9.w),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width : 18.h),
                        SlideTransition(
                            position:BottomLogoAnimatedController.ltrAnimationLogo ,
                            child: Image.asset('assets/images/middlerowlogo.png', width: 18.w)),
                      ],
                    ),
                    SlideTransition(
                      position: BottomLogoAnimatedController.dtpAnimation,
                      child: Row(
                         children: [
                           SizedBox(width: 18.h,),
                           Image.asset('assets/images/bottomleftlogo.png',width: 9.w,),
                           Image.asset('assets/images/middlebottomlogo.png',width: 9.w,),
                           Image.asset('assets/images/bottomrightlogo.png',width: 9.w,)

                         ],
                       ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),

              Spacer(),

            ],
          ), // logo animation

            Container(
              width:37.w ,
              color: Colors.white,
              height: 60.h,
            ), // container to cover start position of logo
            Container(
              color: Colors.white,
              height: 29.h,
              width: 70.w,
            ), // container to cover start position of logo
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.white,
                  height: 54.h,
                  width: 70.w,
                ),

              ],
            ), // container to cover start position of logo

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SlideTransition(
                  position: AnimatedController.rtlAnimation,
                  child: Center(child: Text("Rouse Berry", style: GoogleFonts.josefinSans(fontSize: 25.sp, color: AppColors.blueCol))),
                ),
                SlideTransition(
                  position: AnimatedController.ltrAnimation,
                  child: Center(child: Text("Your child is safe with us", style: GoogleFonts.josefinSans(fontSize: 11.sp, color: Colors.grey))),
                ),
              ],
            ),

            Positioned(
                left: 0,
                bottom: 0,
                child: SlideTransition(
                    position: CircAnimatedController.dtpAnimation,
                    child: Image.asset('assets/images/BlueCircle.png')),width:65.w,),
            Positioned(
              bottom: 0,
              left: 30.w,
              child: SlideTransition(
                position:CircAnimatedController.dtpAnimation ,

                child: Image.asset('assets/images/OrangeCircle.png',color: AppColors.redCol,width: 45.w),
              ),
            ),   // Circle animation
            Positioned(
                right: 0,
                bottom: 0,
                child: SlideTransition(
                    position: CircAnimatedController.dtpAnimation,
                    child: Image.asset('assets/images/PurpleCircle.png',color: AppColors.purbleCol,)),width:50.w,),

            Positioned(
            top: 4.h,
              left: 4.w,
              child: FadeTransition(
                opacity: ShapesAnimatedController.FadeInAnimation,
                child: Image.asset('assets/images/ShapesRev.png',height: 11.h,),
              ),
            ),
            Positioned(
                right: 8.w,
                top: 15.h,
                child: FadeTransition(
                  opacity: ShapesAnimatedController.FadeInAnimation,
                  child: Image.asset('assets/images/Shapes.png',height: 11.h,),
                ),



            )]
        ),
      ),
    );
  }
}