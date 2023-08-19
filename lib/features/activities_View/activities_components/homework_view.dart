import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class HomeWorkView extends StatelessWidget {
  const HomeWorkView({Key? key}) : super(key: key);
  static const String routeName="HomeworkView";
  @override
  Widget build(BuildContext context) {
    return   DefaultTabController(
      length: 2,
      child: Scaffold(
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
                      Navigator.pop(context);

                    },
                        icon: const Icon(Icons.arrow_back_ios,size: 20,weight: 10,
                          color: Color(0xff225C8B),)),
                    Text("Homework",style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff1E1E1E)
                        )
                    ),),
                    const Spacer(),
                    const Text("15 Feb 2023",style: TextStyle(color: Colors.grey),)
                  ],),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 15),
                  child: Container(
                    height: 6.5.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff225C8B),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TabBar(
                        padding: const EdgeInsets.all(7),
                        indicator: BoxDecoration(
                          color: const Color(0xffFEFEFE),
                          borderRadius: BorderRadius.circular(4),
                        ),

                        labelColor:const Color(0xff225C8B),
                        unselectedLabelColor:const Color(0xffFEFEFE) ,

                        tabs: const [
                          Tab(text: "Upcoming",),
                          Tab(text: "Passes",)
                        ]),
                  ),
                ),
                Expanded(
                  child: TabBarView(children: [
                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 5),
                            height: 11.h,
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
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,right: 5),
                                      child: Image.asset('assets/images/mathematics.png',height: 10.h,width: 10.w,),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text("Mathematics",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: const TextStyle(
                                                          fontSize: 16,fontWeight: FontWeight.w500,
                                                          color: Color(0xff1E1E1E)
                                                      )),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("Prepare for the test by functions, their\nproperties and graph",
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
                            height: 11.h,
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
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,right: 5),
                                      child: Image.asset('assets/images/science.png',height: 10.h,width: 10.w,),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text("Science",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: const TextStyle(
                                                          fontSize: 16,fontWeight: FontWeight.w500,
                                                          color: Color(0xff1E1E1E)
                                                      )),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("Prepare a project for a scientific and\nmake a little description",
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
                            height: 11.h,
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
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,right: 5),
                                      child: Image.asset('assets/images/english.png',height: 10.h,width: 10.w,),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text("English",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: const TextStyle(
                                                          fontSize: 16,fontWeight: FontWeight.w500,
                                                          color: Color(0xff1E1E1E)
                                                      )),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("learn new topic and complete\nexercise 6, 8, 9",
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
                            height: 11.h,
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
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,right: 5),
                                      child: Image.asset('assets/images/drawing.png',height: 10.h,width: 10.w,),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text("Drawing",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: const TextStyle(
                                                          fontSize: 16,fontWeight: FontWeight.w500,
                                                          color: Color(0xff1E1E1E)
                                                      )),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("Draw a new topic about spring and\nfamily playing together",
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
                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 5),
                            height: 11.h,
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
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,right: 5),
                                      child: Image.asset('assets/images/mathematics.png',height: 10.h,width: 10.w,),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text("Mathematics",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: const TextStyle(
                                                          fontSize: 16,fontWeight: FontWeight.w500,
                                                          color: Color(0xff1E1E1E)
                                                      )),),
                                                const Spacer(),
                                                Container(
                                                  margin: const EdgeInsets.only(right: 4),
                                                  padding: const EdgeInsets.all(3),
                                                  height: 3.h,
                                                  width: 23.w,
                                                  decoration:   BoxDecoration(
                                                      color: const Color(0xff32A048),
                                                      borderRadius: BorderRadius.circular(4)
                                                  ),
                                                  child: Center(
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 4.0),
                                                          child: Image.asset("assets/images/done.png",width: 4.w,),
                                                        ),
                                                        SizedBox(width: 2.w,),
                                                        Text("Done",
                                                          style: GoogleFonts.poppins(
                                                              textStyle: const TextStyle(
                                                                  fontWeight: FontWeight.w400,fontSize: 12,
                                                                  color: Color(0xffFFFFFF)
                                                              )
                                                          ),)
                                                      ],

                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("Prepare for the test by functions, their\nproperties and graph",
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
                            height: 11.h,
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
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,right: 5),
                                      child: Image.asset('assets/images/science.png',height: 10.h,width: 10.w,),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text("Science",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: const TextStyle(
                                                          fontSize: 16,fontWeight: FontWeight.w500,
                                                          color: Color(0xff1E1E1E)
                                                      )),),
                                                const Spacer(),
                                                Container(
                                                  margin: const EdgeInsets.only(right: 4),
                                                  padding: const EdgeInsets.all(4),
                                                  height: 3.h,
                                                  width: 28.w,
                                                  decoration:   BoxDecoration(
                                                      color: const Color(0xffD32323),
                                                      borderRadius: BorderRadius.circular(4)
                                                  ),
                                                  child: Center(
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 4.0),
                                                          child: Image.asset("assets/images/false.png",width: 4.w,),
                                                        ),
                                                        SizedBox(width: 2.w,),
                                                        Text("Undone",
                                                          style: GoogleFonts.poppins(
                                                              textStyle: const TextStyle(
                                                                  fontWeight: FontWeight.w400,fontSize: 12,
                                                                  color: Color(0xffFFFFFF)
                                                              )
                                                          ),)
                                                      ],

                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("Prepare a project for a scientific and\nmake a little description",
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
                            height: 11.h,
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
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,right: 5),
                                      child: Image.asset('assets/images/english.png',height: 10.h,width: 10.w,),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text("English",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: const TextStyle(
                                                          fontSize: 16,fontWeight: FontWeight.w500,
                                                          color: Color(0xff1E1E1E)
                                                      )),),
                                                const Spacer(),
                                                Container(
                                                  margin: const EdgeInsets.only(right: 4),
                                                  padding: const EdgeInsets.all(4),
                                                  height: 3.h,
                                                  width: 28.w,
                                                  decoration:   BoxDecoration(
                                                      color: const Color(0xffD32323),
                                                      borderRadius: BorderRadius.circular(4)
                                                  ),
                                                  child: Center(
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 4.0),
                                                          child: Image.asset("assets/images/false.png",width: 4.w,),
                                                        ),
                                                        SizedBox(width: 2.w,),
                                                        Text("Undone",
                                                          style: GoogleFonts.poppins(
                                                              textStyle: const TextStyle(
                                                                  fontWeight: FontWeight.w400,fontSize: 12,
                                                                  color: Color(0xffFFFFFF)
                                                              )
                                                          ),)
                                                      ],

                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("learn new topic and complete\nexercise 6, 8, 9",
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
                            height: 11.h,
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
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,right: 5),
                                      child: Image.asset('assets/images/drawing.png',height: 10.h,width: 10.w,),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text("Drawing",
                                                  style: GoogleFonts.poppins(
                                                      textStyle: const TextStyle(
                                                          fontSize: 16,fontWeight: FontWeight.w500,
                                                          color: Color(0xff1E1E1E)
                                                      )),),
                                                const Spacer(),
                                                Container(
                                                  margin: const EdgeInsets.only(right: 4),
                                                  padding: const EdgeInsets.all(3),
                                                  height: 3.h,
                                                  width: 23.w,
                                                  decoration:   BoxDecoration(
                                                      color: const Color(0xff32A048),
                                                      borderRadius: BorderRadius.circular(4)
                                                  ),
                                                  child: Center(
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 4.0),
                                                          child: Image.asset("assets/images/done.png",width: 4.w,),
                                                        ),
                                                        SizedBox(width: 2.w,),
                                                        Text("Done",
                                                          style: GoogleFonts.poppins(
                                                              textStyle: const TextStyle(
                                                                  fontWeight: FontWeight.w400,fontSize: 12,
                                                                  color: Color(0xffFFFFFF)
                                                              )
                                                          ),)
                                                      ],

                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("Draw a new topic about spring and\nfamily playing together",
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
                  ]),
                )
              ],
            ),
          )
      ),
    );
  }
}
