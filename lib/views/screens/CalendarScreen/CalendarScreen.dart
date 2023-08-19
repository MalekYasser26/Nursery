import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/views/Widgets/CalendarEventWidget.dart';
import 'package:nursery/views/Widgets/TableCalendarWidget.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/constants.dart';
import '../../Widgets/GradeWidget.dart';
import '../../Widgets/QuizWidget.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal : 4.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/name.png',height: 10.h,width: 10.w,),
                      SizedBox(width: 2.w,),
                      Text('Rouse Berry',style: GoogleFonts.josefinSans(
                          textStyle:const TextStyle(color: AppColors.blueCol),fontWeight: FontWeight.w500,fontSize: 14.sp),),
                      const Spacer(),
                      InkWell(
                        onTap: (){
                        },
                        child: Container(
                          height: 4.h,
                          width: 8.w,
                          decoration:   BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                            boxShadow:  [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.3),
                                blurRadius: 5.0,
                                spreadRadius: 1,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                              )
                            ],
                          ),
                          child: Image.asset('assets/images/notification.png',),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 1.h,),
                  Padding(
                    padding:  EdgeInsets.only(top: 2.h,bottom: 2.h ),
                    child: Container(
                      height: 6.5.h,
                      decoration: BoxDecoration(
                        color:  AppColors.blueCol,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TabBar(
                          padding:  EdgeInsets.all(0.8.h),
                          indicator: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),

                          labelColor:AppColors.blueCol,
                          unselectedLabelColor: Colors.white ,
                          labelStyle: GoogleFonts.poppins(),
                          tabs: const [
                            Tab(text: "Events",),
                            Tab(text: "Attendance",)
                          ]),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ListView.separated(

                          padding: EdgeInsets.only(bottom: 6.h),
                            itemBuilder: (context, index) => CalendarEvent(
                                date: "15 Jan 2023",
                                date2: "18 Feb 2023",
                                header: headerEvents[index],
                                subtext: subtextEvent,
                                img: imgEvents[index],
                                time: "08:00 am - 02:30 pm"),
                            separatorBuilder: (context, index) => SizedBox(height: 5.h,),
                            itemCount: headerEvents.length,
                        physics: BouncingScrollPhysics()),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("Please select your child that you want to see its attendance",
                                style: GoogleFonts.poppins(fontSize: 13.sp,fontWeight: FontWeight.w600),),
                              Row(
                                children: [
                                  Container(
                                    height: 15.h,
                                    width: 42.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    child: Image.asset('assets/images/Girl.png',width:double.infinity),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 15.h,
                                    width: 42.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Image.asset('assets/images/boy.png',width: double.infinity,),
                                  )
                                ],
                              ),
                              SizedBox(height: 2.h,),
                              TableCalendarWidget(),
                              SizedBox(height: 1.h,)


                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}
