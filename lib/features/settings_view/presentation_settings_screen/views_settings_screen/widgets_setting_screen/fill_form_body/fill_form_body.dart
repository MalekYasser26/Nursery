import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/features/settings_view/presentation_settings_screen/views_settings_screen/widgets_setting_screen/fill_form_body/fill_form_confirm.dart';
import 'package:nursery/features/settings_view/presentation_settings_screen/views_settings_screen/widgets_setting_screen/fill_form_body/fill_form_view.dart';
import 'package:sizer/sizer.dart';

class FillFormBody extends StatefulWidget {
  const FillFormBody({Key? key}) : super(key: key);

  @override
  State<FillFormBody> createState() => _FillFormBodyState();
}

class _FillFormBodyState extends State<FillFormBody> {
  int ? selectedRadio8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/name.png',height: 10.h,width: 10.w,),
                  SizedBox(width: 2.w,),
                  Text('Rouse Berry',style: GoogleFonts.josefinSans(
                      textStyle:const TextStyle(color: Color(0xff225C8B)),fontWeight: FontWeight.w500,fontSize: 18),),
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
                            blurRadius: 5.0, // soften the shadow
                            spreadRadius: 1, //extend the shadow
                            offset: const Offset(
                              2.0, // Move to right 5  horizontally
                              2.0, // Move to bottom 5 Vertically
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
                mainAxisAlignment:MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context,()=>const FillFormScreen());
                  },
                      icon: const Icon(Icons.arrow_back_ios,size: 20,weight: 10,
                        color: Color(0xff225C8B),)),
                  Text("Please fill this form",style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff1E1E1E)
                      )
                  ),),
                ],),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                    padding: const EdgeInsets.only(left: 5),
                    height: 70.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.3),
                          blurRadius: 5.0, // soften the shadow
                          spreadRadius: 1, //extend the shadow
                          offset: const Offset(
                            2.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child:  Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(14),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    hintText: "Child Name",
                                    hintStyle: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color(0xffBCBCBC) ,
                                            fontWeight: FontWeight.w400,fontSize: 14
                                        )
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 6.h,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(14),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      hintText: "Age",
                                      hintStyle: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: Color(0xffBCBCBC) ,
                                              fontWeight: FontWeight.w400,fontSize: 14
                                          )
                                      )
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 6.h,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(14),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      hintText: "Address",
                                      hintStyle: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: Color(0xffBCBCBC) ,
                                              fontWeight: FontWeight.w400,fontSize: 14
                                          )
                                      )
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 6.h,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(14),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      hintText: "Who has parental responsibility?",
                                      hintStyle: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: Color(0xffBCBCBC) ,
                                              fontWeight: FontWeight.w400,fontSize: 14
                                          )
                                      )
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 6.h,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(14),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      hintText: "Phone Number",
                                      hintStyle: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: Color(0xffBCBCBC) ,
                                              fontWeight: FontWeight.w400,fontSize: 14
                                          )
                                      )
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: DottedBorder(
                                color: const Color(0xffE0E0E0),
                                borderType: BorderType.RRect,
                                dashPattern: [4.w],
                                radius:Radius.circular(3.w) ,
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 2.0.h),
                                        child: Image.asset('assets/images/personalphoto.png',height: 5.h),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(bottom: 2.0.h),
                                        child: Text("Upload Child Photo",style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 14.sp,
                                        ),),
                                      )
                                    ],
                                  ),

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 6.h,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(14),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      hintText: "Brother's Number",
                                      hintStyle: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: Color(0xffBCBCBC) ,
                                              fontWeight: FontWeight.w400,fontSize: 14
                                          )
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                    height: 36.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.3),
                          blurRadius: 5.0, // soften the shadow
                          spreadRadius: 1, //extend the shadow
                          offset: const Offset(
                            2.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 8),
                            child: Row(
                              children: [
                                Text("Does he has a sensitivity?",
                                  style:GoogleFonts.poppins(
                                      fontSize: 14,fontWeight: FontWeight.w500
                                  ) ,),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    visualDensity: const VisualDensity(horizontal: -4),
                                    activeColor: KPrimaryColor,
                                    value: 1,
                                    groupValue: selectedRadio8,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedRadio8 = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Yes",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(fontSize: 14),
                                      color: selectedRadio8 == 1 ? KPrimaryColor : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 28.w,),
                              Row(
                                children: [
                                  Radio(
                                    visualDensity: const VisualDensity(horizontal: -4),
                                    activeColor: KPrimaryColor,
                                    value: 2,
                                    groupValue: selectedRadio8,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedRadio8 = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "No",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(fontSize: 14,),
                                      color: selectedRadio8 == 2 ? KPrimaryColor : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 8),
                            child: Row(
                              children: [
                                Text("Mention things he has sensitivity from",
                                  style:GoogleFonts.poppins(
                                      fontSize: 14,fontWeight: FontWeight.w500
                                  ) ,),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: const Color(0xffE5E2E5)
                                )
                            ),
                            height: 16.h,
                            width: 80.w,
                            child: Text(
                              ".\n.\n.\n.",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,fontSize: 14,
                                      color: Color(0xffA7A7A7)
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                    height: 26.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.3),
                          blurRadius: 5.0, // soften the shadow
                          spreadRadius: 1, //extend the shadow
                          offset: const Offset(
                            2.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 8),
                            child: Row(
                              children: [
                                Text("Mention the prohibitions",
                                  style:GoogleFonts.poppins(
                                      fontSize: 14,fontWeight: FontWeight.w500
                                  ) ,),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: const Color(0xffE5E2E5)
                                )
                            ),
                            height: 16.h,
                            width: 80.w,
                            child: Text(
                              ".\n.\n.\n.",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,fontSize: 14,
                                      color: Color(0xffA7A7A7)
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ),
              SizedBox(height: 8.h,),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const FillFormConfirm()));
                },
                child: Container(
                  height:5.h,
                  width:double.infinity,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: KPrimaryColor
                  ),
                  child:   Center(
                    child: Text("Submit",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white
                        ),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
