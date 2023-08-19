import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class PottyView extends StatelessWidget {
  const PottyView({Key? key}) : super(key: key);
  static const String routeName="PottyView";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    IconButton(onPressed: (){},
                        icon: const Icon(Icons.arrow_back_ios,size: 20,weight: 10,
                          color: Color(0xff225C8B),)),
                    Text("Potty",style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff1E1E1E)
                        )
                    ),),
                    const Spacer(),
                    const Text("15 Feb 2023",style: TextStyle(color: Colors.grey),)
                  ],),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Colors.grey
                      )
                  ),
                  height: 6.h,
                  width: 100.w,
                  child: Center(
                    child: Text("Pee",
                      style:GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white,
                            fontSize: 18,fontWeight: FontWeight.w400
                        ),),
                    ),
                  ),
                ),
                ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                              child: Container(
                                  height: 10.h,
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
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(" . Time: 10:30 min",style:GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16
                                            )
                                        )

                                        ),
                                        Text(" . Duratiob: 05:30 min",style:GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16
                                            )
                                        ))
                                      ],
                                    ),
                                  )
                              ),
                            ),
                            Image.asset("assets/images/potty1.png"),
                            SizedBox(height: 3.h,),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                              child: Container(
                                  height: 10.h,
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
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(" . Time: 10:30 min",style:GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16
                                            )
                                        )

                                        ),
                                        Text(" . Duratiob: 05:30 min",style:GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16
                                            )
                                        ))
                                      ],
                                    ),
                                  )
                              ),
                            ),
                            Image.asset("assets/images/potty2.png")
                          ],
                        ),
                      );
                    }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

