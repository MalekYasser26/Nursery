import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/views/Widgets/ClassWidget.dart';
import 'package:nursery/views/Widgets/TimeTableWidget.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../constants/constants.dart';

class ClassesView extends StatefulWidget {
  const ClassesView({Key? key}) : super(key: key);
  static const String routeName="ClassesView";

  @override
  State<ClassesView> createState() => _ClassesViewState();
}

class _ClassesViewState extends State<ClassesView> {
  String dropdownValue5 = quizDates.first;
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                Row(
                  children: [
                    InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.arrow_back_ios,color: AppColors.blueCol,size: 15.sp)),
                    Text(" Class Time Table",
                      style: GoogleFonts.poppins(
                          textStyle:  TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp)
                      ),),
                    Spacer(),
                    Text("15 Feb 2023",
                      style: GoogleFonts.poppins(
                          textStyle:  TextStyle(fontWeight: FontWeight.w400,fontSize: 11.sp,color: Colors.grey)
                      ),),

                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300)
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: Padding(
                        padding:  EdgeInsets.all(2.w),
                       child : Icon(Icons.keyboard_arrow_down,size: 35,weight: 5,)
                      ),
                      isExpanded: true,
                      alignment: Alignment.center,
                      value: dropdownValue5,
                      items: quizDates.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Row(
                            children: [
                              SizedBox(width : 1.w),
                              Icon(Icons.calendar_month,color: Colors.grey),
                              SizedBox(width: 2.w,),
                              Text(value,style: GoogleFonts.poppins(),),
                            ],
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          dropdownValue5 = value!;
                        });
                      }, ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 2.0.h),
                  child: TTwidget(day: quizzesDate[0],classMat1: "Mathematics",classMat2: "Science",
                      classTime1: "10:00 am - 10:30 am",classTime2: "10:40 am - 11:10 am"),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 2.0.h),
                  child: TTwidget(day: quizzesDate[1],classMat1: "English",classMat2: "Science",
                      classTime1: "10:00 am - 10:30 am",classTime2: "10:40 am - 11:10 am"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${quizzesDate[2]}" ,style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12.sp),),
                    SizedBox(height: 1.h,),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
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
                        child: Padding(
                          padding:  EdgeInsets.only(bottom: 1.h),
                          child: ClassWidget(classMat: "English", classTime: "10:00 am - 10:30 am"),
                        )),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 2.0.h),
                  child: TTwidget(day: quizzesDate[3],classMat1: "Social Science",classMat2: "Math’s",
                      classTime1: "10:00 am - 10:30 am",classTime2: "10:40 am - 11:10 am"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${quizzesDate[4]}" ,style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12.sp),),
                    SizedBox(height: 1.h,),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
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
                        child: Padding(
                          padding:  EdgeInsets.only(bottom: 1.h),
                          child: ClassWidget(classMat: "English", classTime: "10:00 am - 10:30 am"),
                        )),
                  ],
                ),
                SizedBox(height: 2.h,)




              ],

            ),
          ),
        ),
      )
    );
  }
}