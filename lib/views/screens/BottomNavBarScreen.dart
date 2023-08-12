import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nursery/cubit/bottom_nav_bar_cubit.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  var index = 0 ;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavBarCubit, BottomNavBarState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          extendBody: true, // Set this property to true to remove the padding between the navigation bar and body
          bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  color: AppColors.blueCol,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12.sp),topRight: Radius.circular(12.sp)),
                ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal:4.w ,vertical: 2.h),
              child: GNav(
                textStyle: GoogleFonts.josefinSans(
                  fontSize: 13.sp,
                  color: AppColors.blueCol,
                  fontWeight: FontWeight.w400
                ),
                iconSize: 6.w,
                backgroundColor: AppColors.blueCol,
                color: Colors.white,
                activeColor: AppColors.blueCol,
                tabBackgroundColor: Colors.white,
                padding: EdgeInsets.all(8.sp),
                gap: 2.w,
                  tabs:  BlocProvider.of<BottomNavBarCubit>(context).BotNavIcons,
                  onTabChange:(index) {
                    BlocProvider.of<BottomNavBarCubit>(context).SelectIndex(index: index);
                    print(index);
                    setState(() {
                    });
                  },
              ),
            ),
          ),
          body: BlocProvider.of<BottomNavBarCubit>(context).Screens[BlocProvider.of<BottomNavBarCubit>(context).bottomNavIndex],
        );
      },
    );
  }
}
