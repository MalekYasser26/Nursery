import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/views/Widgets/MoodItem.dart';
import 'package:nursery/views/screens/DailyReportScreen/DailyReportItem.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../constants/constants.dart';
import '../../../../../../core/utils/assets.dart';

class MoodView extends StatefulWidget {
  const MoodView({Key? key}) : super(key: key);
  static const String routeName="MoodView";

  @override
  State<MoodView> createState() => _MoodViewState();
}

class _MoodViewState extends State<MoodView> {
  String dropdownValue3 = moodDate.first;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(3.w),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/name.png',height: 10.h,width: 10.w,),
                  SizedBox(width: 2.w,),
                  Text('Rouse Berry',style: GoogleFonts.josefinSans(
                      textStyle:const TextStyle(color: Color(0xff225C8B)),fontWeight: FontWeight.w500,fontSize: 14.sp),),
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
                      child: Icon(Icons.arrow_back_ios,color: Colors.black45,size: 15.sp)),
                  Text(" Mood",
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
              SizedBox(height: 1.h,),
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
                    value: dropdownValue3,
                    items: moodDate.map<DropdownMenuItem<String>>((String value) {
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
                        dropdownValue3 = value!;
                      });
                    }, ),
                ),
              ),
              MoodItem(action:" Malak was happy" ,time:"09:00 am - 12:30 pm:" ,
                    color:AppColors.lightgreenCol ,img:AssetsData.happy ,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12.0.w),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(color :Colors.grey.shade300),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(1.w),
                    child: Text(
                      "Malak had a great afternoon painting today. She painted a lion. Tomorrow, She wants to paint again",
                      softWrap: true,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 13.sp),
                    ),
                  ),
                ),
              ),
              MoodItem(action:" Malak was bored" ,time:"01:00 pm - 02:30 pm:" ,
                color:AppColors.orangeCol ,img:AssetsData.bored ,),
              MoodItem(action:" Malak was angry" ,time:"03:30 pm:",
                color:AppColors.redCol ,img:AssetsData.bored ,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12.0.w),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(color :Colors.grey.shade300),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(1.w),
                    child: Row(
                      children: [
                        Text(
                          "She wanted her mom",
                          softWrap: true,
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 13.sp),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                ),
              ),





            ],
          ),
        ),
      )
    );
  }
}