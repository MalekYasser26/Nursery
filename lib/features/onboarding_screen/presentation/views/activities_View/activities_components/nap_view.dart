import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/core/utils/assets.dart';
import 'package:nursery/views/Widgets/ActivityItem.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../constants/constants.dart';

class NapView extends StatefulWidget {
  const NapView({Key? key}) : super(key: key);
  static const String routeName="NapView";

  @override
  State<NapView> createState() => _NapViewState();
}

class _NapViewState extends State<NapView> {
  String dropdownValue2 = napDate.first;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(3.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(" Nap",
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
                    isExpanded: true,
                    alignment: Alignment.center,
                    value: dropdownValue2,
                    items: napDate.map<DropdownMenuItem<String>>((String value) {
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
                        dropdownValue2 = value!;
                      });
                    }, ),
                ),
              ),
              SizedBox(
                height: 60.h,
                width: double.infinity,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => ActItem(action:napTXT[index] ,time:napTime[index] ,
                      color:AppColors.blueCol ,img:AssetsData.reportImg2 , ),
                    separatorBuilder:(context, index) =>  SizedBox(height: 1.h,),
                    itemCount: napTXT.length),
              ),





            ],
          ),
        ),
      ),
    );
  }
}
