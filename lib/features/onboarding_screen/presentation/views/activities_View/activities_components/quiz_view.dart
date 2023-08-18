import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/views/Widgets/QuizWidget.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../views/Widgets/GradeWidget.dart';

class QuizView extends StatefulWidget {
  const QuizView({Key? key}) : super(key: key);
  static const String routeName="QuizView";

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  String dropdownValue4 = quizDates.first;
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
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
                Row(
                  children: [
                    InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.arrow_back_ios,color: AppColors.blueCol,size: 15.sp)),
                    Text(" Quizzes",
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
                          Tab(text: "Upcoming",),
                          Tab(text: "Passed",)
                        ]),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300)
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down),
                      isExpanded: true,
                      alignment: Alignment.center,
                      value: dropdownValue4,
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
                          dropdownValue4 = value!;
                        });
                      }, ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          Expanded(
                            child:
                            Padding(
                              padding:  EdgeInsets.only(top: 1.h),
                              child: ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) =>QuizWidget(text:quizzesTXT[index] ,time:"10:00 am" ,
                                    date:quizzesDate[index] ,imagePath:quizzesImgs[index],),
                                  separatorBuilder:(context, index) =>  SizedBox(height: 1.h,),
                                  itemCount: ReportTXT.length),
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          Expanded(
                            child:
                            Padding(
                              padding:  EdgeInsets.only(top: 1.h),
                              child: ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) => GradeWidget(text:quizzesTXT[index] ,
                                   imagePath:quizzesImgs[index],index: index, answeredQuestions:answeredQuestionsList[index] , ),
                                  separatorBuilder:(context, index) =>  SizedBox(height: 1.h,),
                                  itemCount: quizzesTXT.length),
                            ),
                          ),

                        ],
                      ),

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
