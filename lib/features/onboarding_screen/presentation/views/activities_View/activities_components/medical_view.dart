import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MedicalView extends StatelessWidget {
  const MedicalView({Key? key}) : super(key: key);
  static const String routeName="MedicalView";
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
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
                    Text("Medical",style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff1E1E1E)
                        )
                    ),),
                    const Spacer(),
                    const Text("15 Feb 2023",style: TextStyle(color: Colors.grey),)
                  ],),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Colors.grey
                      )
                  ),
                  height: 6.h,
                  width: 100.w,
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_month,color: Colors.grey,)) ,
                      const Text("04 Feb 2023 - 16 Feb 2023",),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down,size: 35,weight: 5,))
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.5.h,),
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
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.speaker_notes,color: Colors.white,)),

                      const Text("Add notes for his medicine",style: TextStyle(
                          color: Colors.white
                      ),),
                    ],
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
                            Row(
                              children: [
                                Text("Morning",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w500
                                      )
                                  ),),
                                const Spacer(),
                                Text("10:30 am",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w400,fontSize: 12,
                                          color: Color(0xffBCBCBC)
                                      )
                                  ),)
                              ],
                            ),
                            Container(
                                padding: const EdgeInsets.only(left: 5),
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/images/guaifenesin.png',height: 10.h,width: 10.w,),
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text("Guaifenesin",
                                                      style: GoogleFonts.poppins(
                                                          textStyle: const TextStyle(
                                                              fontSize: 16,fontWeight: FontWeight.w500,
                                                              color: Color(0xff1E1E1E)
                                                          )),),
                                                    const Spacer(),
                                                    Container(
                                                      padding: const EdgeInsets.all(4),
                                                      height: 3.h,
                                                      width: 23.w,
                                                      decoration:   BoxDecoration(
                                                          color: const Color(0xff32A048),
                                                          borderRadius: BorderRadius.circular(4)
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Image.asset("assets/images/done.png",width: 4.w,),
                                                          SizedBox(width: 2.w,),
                                                          Text("Taken",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: const TextStyle(
                                                                    fontWeight: FontWeight.w400,fontSize: 12,
                                                                    color: Color(0xffFFFFFF)
                                                                )
                                                            ),)
                                                        ],

                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text("1/2 bill",
                                                      style: GoogleFonts.poppins(
                                                          textStyle: const TextStyle(
                                                              fontSize: 12,fontWeight: FontWeight.w400,
                                                              color: Color(0xffA7A7A7)
                                                          )),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ],
                                )
                            ),
                            SizedBox(height: 2.h,),
                            Container(
                                padding: const EdgeInsets.only(left: 5),
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/images/antibiotics.png',height: 10.h,width: 10.w,),
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text("Antibiotics",
                                                      style: GoogleFonts.poppins(
                                                          textStyle: const TextStyle(
                                                              fontSize: 16,fontWeight: FontWeight.w500,
                                                              color: Color(0xff1E1E1E)
                                                          )),),
                                                    const Spacer(),
                                                    Container(
                                                      padding: const EdgeInsets.all(4),
                                                      height: 3.h,
                                                      width: 23.w,
                                                      decoration:   BoxDecoration(
                                                          color: const Color(0xff32A048),
                                                          borderRadius: BorderRadius.circular(4)
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Image.asset("assets/images/done.png",width: 4.w,),
                                                          SizedBox(width: 2.w,),
                                                          Text("Taken",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: const TextStyle(
                                                                    fontWeight: FontWeight.w400,fontSize: 12,
                                                                    color: Color(0xffFFFFFF)
                                                                )
                                                            ),)
                                                        ],

                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text("1 spoon",
                                                      style: GoogleFonts.poppins(
                                                          textStyle: const TextStyle(
                                                              fontSize: 12,fontWeight: FontWeight.w400,
                                                              color: Color(0xffA7A7A7)
                                                          )),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ],
                                )
                            ),

                            SizedBox(height: 3.h,),


                            Row(
                              children: [
                                Text("Afternoon",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w500
                                      )
                                  ),),
                                const Spacer(),
                                Text("02:00 pm",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w400,fontSize: 12,
                                          color: Color(0xffBCBCBC)
                                      )
                                  ),)
                              ],
                            ),
                            Container(
                                padding: const EdgeInsets.only(left: 5),
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/images/penicillin.png',height: 10.h,width: 10.w,),
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text("Penicillin",
                                                      style: GoogleFonts.poppins(
                                                          textStyle: const TextStyle(
                                                              fontSize: 16,fontWeight: FontWeight.w500,
                                                              color: Color(0xff1E1E1E)
                                                          )),),
                                                    const Spacer(),
                                                    Container(
                                                      padding: const EdgeInsets.all(4),
                                                      height: 3.h,
                                                      width: 32.w,
                                                      decoration:   BoxDecoration(
                                                          color: const Color(0xffD32323),
                                                          borderRadius: BorderRadius.circular(4)
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Image.asset("assets/images/false.png",width: 4.w,),
                                                          SizedBox(width: 2.w,),
                                                          Text("Hasn't taken",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: const TextStyle(
                                                                    fontWeight: FontWeight.w400,fontSize: 12,
                                                                    color: Color(0xffFFFFFF)
                                                                )
                                                            ),)
                                                        ],

                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text("5 ml",
                                                      style: GoogleFonts.poppins(
                                                          textStyle: const TextStyle(
                                                              fontSize: 12,fontWeight: FontWeight.w400,
                                                              color: Color(0xffA7A7A7)
                                                          )),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ],
                                )
                            ),
                            SizedBox(height: 2.h,),
                            Container(
                                padding: const EdgeInsets.only(left: 5),
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
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/images/aquaphor.png',height: 10.h,width: 10.w,),
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text("Aquaphor",
                                                      style: GoogleFonts.poppins(
                                                          textStyle: const TextStyle(
                                                              fontSize: 16,fontWeight: FontWeight.w500,
                                                              color: Color(0xff1E1E1E)
                                                          )),),
                                                    const Spacer(),
                                                    Container(
                                                      padding: const EdgeInsets.all(4),
                                                      height: 3.h,
                                                      width: 23.w,
                                                      decoration:   BoxDecoration(
                                                          color: const Color(0xff32A048),
                                                          borderRadius: BorderRadius.circular(4)
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Image.asset("assets/images/done.png",width: 4.w,),
                                                          SizedBox(width: 2.w,),
                                                          Text("Taken",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: const TextStyle(
                                                                    fontWeight: FontWeight.w400,fontSize: 12,
                                                                    color: Color(0xffFFFFFF)
                                                                )
                                                            ),)
                                                        ],

                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text("once for 1 minute",
                                                      style: GoogleFonts.poppins(
                                                          textStyle: const TextStyle(
                                                              fontSize: 12,fontWeight: FontWeight.w400,
                                                              color: Color(0xffA7A7A7)
                                                          )),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ],
                                )
                            ),
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

