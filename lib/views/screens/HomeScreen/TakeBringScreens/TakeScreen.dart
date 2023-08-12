import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/views/Widgets/BasicTextFF.dart';
import 'package:nursery/views/Widgets/ConfirmButton.dart';
import 'package:nursery/views/Widgets/ExtendedWidget.dart';
import 'package:nursery/views/Widgets/UploadPhotoWidget.dart';
import 'package:sizer/sizer.dart';

import '../../../Widgets/ExtendedWidgetElse.dart';

class TakeBringChildScreen extends StatefulWidget {
   TakeBringChildScreen({Key? key,required this.TakeOrBring}) : super(key: key);
  String TakeOrBring ;
  @override

  State<TakeBringChildScreen> createState() => _TakeBringChildScreenState();
}

class _TakeBringChildScreenState extends State<TakeBringChildScreen> {
  String? gender; //no radio button will be selected
  bool  checked = false;
  int selectedOption = 1;

  @override
  void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,

      ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 5.0.w,bottom: 5.h),
                child: Row(
                children: [
                  InkWell(
                      child: Icon(Icons.arrow_back_ios,color: Colors.black45,size: 15.sp),
                  onTap: () => Navigator.pop(context),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 1.w),
                    child: Text("${widget.TakeOrBring}",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 14.sp),),
                  ),
                ],
            ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.0.w),
                  child:
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffDDDDDD),
                          blurRadius: 6.0,
                          spreadRadius: 2.0,
                          offset: Offset(0.0, 0.0),
                        )
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Radio<int>(
                                visualDensity: VisualDensity(horizontal: -4),
                                activeColor: AppColors.blueCol,
                                value: 1,
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value!;
                                  });
                                },
                              ),
                              Text(
                                "I will take him (default)",
                                style: GoogleFonts.poppins(
                                  color: selectedOption == 1 ? AppColors.blueCol : Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Radio<int>(
                                      activeColor: AppColors.blueCol,
                                      visualDensity: VisualDensity(horizontal: -4),
                                      value: 2,
                                      groupValue: selectedOption,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value!;
                                        });
                                      },
                                    ),
                                    Text(
                                      "Bus (Fees)",
                                      style: GoogleFonts.poppins(
                                        color: selectedOption == 2 ? AppColors.blueCol : Colors.black,
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
                                      visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                                      value: 3,
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
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          if(selectedOption==2)
                            ExtendedWidget(),
                          if(selectedOption == 3)
                          ExtendedWidgetElse()

                        ],
                      ),
                    ),
                  )



              ),
              ConfirmButton(),


            ],
          ),
        )
    );
  }
}
