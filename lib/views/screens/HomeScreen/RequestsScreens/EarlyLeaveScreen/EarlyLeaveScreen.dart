import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/views/Widgets/BasicButtonRevColors.dart';
import 'package:nursery/views/Widgets/LeaveForm.dart';
import 'package:nursery/views/screens/ConfirmScreen.dart';
import 'package:nursery/views/screens/HomeScreen/RequestsScreens/EarlyLeaveScreen/CalendarCustom.dart';
import 'package:sizer/sizer.dart';

class EarlyLeaveScreen extends StatefulWidget {
  const EarlyLeaveScreen({Key? key}) : super(key: key);

  @override
  State<EarlyLeaveScreen> createState() => _EarlyLeaveScreenState();

}

class _EarlyLeaveScreenState extends State<EarlyLeaveScreen> {
  String dropdownValue = EarlyLeaveButton.first;
  String dropdownValue2 = LeaveTime.first;
  int selectedOption = 2;
  bool pressed = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 4.0.w,vertical: 1.6.h),
          child: ListView(

            children: [
              Row(
                children: [
                  Image.asset('assets/images/name.png',height: 10.h,width: 10.w,),
                  SizedBox(width: 2.w,),
                  Text('Rouse Berry',style: GoogleFonts.josefinSans(
                      textStyle:const TextStyle(color: Color(0xff225C8B)),fontWeight: FontWeight.w500,fontSize: 18),),
                  const Expanded(
                      flex: 2,
                      child: SizedBox()),
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
              Row(
                children: [
                  InkWell(
                    child: Icon(Icons.arrow_back_ios,color: Colors.black45,size: 15.sp),
                    onTap: () => Navigator.pop(context),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 1.w),
                    child: Text("Early leave request",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 14.sp),),
                  ),
                ],
              ),
              SizedBox(height :3.h),
              Text('Select the date',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14.sp),),
              const DatePickerCustom(),
              SizedBox(height :3.h),

              Text('Select Time',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14.sp),),
              Row(
                children: [
                  Container(
                    width: 20.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300)
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        isExpanded: true,
                        alignment: Alignment.center,
                        value: dropdownValue,
                        items: EarlyLeaveButton.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Center(child: Text(value,style: GoogleFonts.poppins(),)),
                          );
                        }).toList(),
                          onChanged: (value) {
                            setState(() {
                              dropdownValue = value!;
                            });
                          }, ),
                    ),
                  ),
                  SizedBox(width: 4.w,),
                  Container(
                    width: 20.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300)
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: Icon(Icons.keyboard_arrow_down),

                        isExpanded: true,
                        alignment: Alignment.center,
                        value: dropdownValue2,
                        items: LeaveTime.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Center(child: Text(value,style: GoogleFonts.poppins(),)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            dropdownValue2 = value!;
                          });
                        }, ),
                    ),
                  ),

                ],
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 1.h),
                child: const Divider(
                  thickness: 1.5,
                ),
              ),
              Text('Who is going to take the child?',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize:13.sp ),),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Radio<int>(
                          activeColor: AppColors.blueCol,
                          visualDensity: const VisualDensity(horizontal: -4),
                          value: 1,
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                        ),
                        Text(
                          " Me",
                          style: GoogleFonts.poppins(
                            color:Colors.black,
                            fontSize: 15.sp

                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Radio<int>(
                          activeColor: AppColors.blueCol,
                          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                          value: 2,
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                        ),
                        Text(
                          "Someone Else",
                          style: GoogleFonts.poppins(
                            color: selectedOption == 3 ? AppColors.blueCol : Colors.black,
                              fontSize: 15.sp
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const LeaveFormWidget(),
               SizedBox(
                height: 3.h,
              ),
              BasicButton(
                  route: (context) => ConfirmScreen(msgButton: "Request Confirmed", submsgButton: "Request has been sent successfully"),
                  color: AppColors.blueCol,
                  Textcolor: Colors.white,
                  TextSt: "Send request",
                  borderColor: Colors.transparent),



            ],

          ),
        ),
      ),
    );
  }
}
