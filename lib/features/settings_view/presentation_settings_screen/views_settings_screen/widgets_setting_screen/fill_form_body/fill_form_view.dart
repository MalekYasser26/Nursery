import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/features/settings_view/presentation_settings_screen/views_settings_screen/widgets_setting_screen/fill_form_body/fill_form_body.dart';
import 'package:nursery/features/settings_view/presentation_settings_screen/views_settings_screen/widgets_setting_screen/settings_body/settings_body.dart';
import 'package:sizer/sizer.dart';

class FillFormScreen extends StatelessWidget {
  const FillFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                  Navigator.pop(context,()=>const SettingsScreenBody());
                },
                    icon: const Icon(Icons.arrow_back_ios,size: 20,weight: 10,
                      color: Color(0xff225C8B),)),
                Text("Fill form",style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff1E1E1E)
                    )
                ),),
              ],),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  height: 30.h,
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
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Text("This form is about everything related to\nyour child:"
                            ,style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w600,
                                    color: Color(0xff000000)
                                )
                            ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text("-Pee, poo, eat, sleep, repeat, Make sure\nyou keep good notes for mom and dad."
                              ,style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14,fontWeight: FontWeight.w400,
                                      color: Color(0xff000000)
                                  )
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text("-Plan for the week ahead with this easy\nlesson"
                              ,style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14,fontWeight: FontWeight.w400,
                                      color: Color(0xff000000)
                                  )
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text("   -It contains 20 questions and will not take\n   a time to finish"
                              ,style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14,fontWeight: FontWeight.w400,
                                      color: Color(0xff000000)
                                  )
                              ),),
                          )
                        ],
                      )
                  )
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const FillFormBody()));
              },
              child: Container(
                height:5.h,
                width:double.infinity,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: KPrimaryColor
                ),
                child:   Center(
                  child: Text("Start answering",
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
    );
  }
}
