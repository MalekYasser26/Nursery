import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class FoodView extends StatelessWidget {
  const FoodView({Key? key}) : super(key: key);
  static const String routeName="FoodView";
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
                    Text("Food",style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff1E1E1E)
                        )
                    ),),
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
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text("Per Week",),
                      ),
                      const Spacer(),
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

                      const Text("Add notes for his food",style: TextStyle(
                          color: Colors.white
                      ),),
                    ],
                  ),
                ),
                ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("19 Feb 2023 (Sunday)",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w400,fontSize: 14,
                                          color: Color(0xff1E1E1E)
                                      )
                                  ),),
                              ],
                            ),
                            Center(
                              child:Column(
                                children: [
                                  Container(
                                    height: 75.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow:  [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(.1),
                                          blurRadius: 5.0, // soften the shadow
                                          spreadRadius: 1, //extend the shadow
                                          offset: const Offset(
                                            2.0, // Move to right 5  horizontally
                                            0.0, // Move to bottom 5 Vertically
                                          ),
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset('assets/images/breakfast.png',height: 10.h,width: 10.w,),
                                              Expanded(
                                                flex: 1,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text("Breakfast",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: const TextStyle(
                                                                    fontSize: 16,fontWeight: FontWeight.w500,
                                                                    color: Color(0xff1E1E1E)
                                                                )),
                                                          ),
                                                          SizedBox(width: 11.h,),
                                                          Padding(
                                                            padding: const EdgeInsets.all(2.5),
                                                            child: Image.asset("assets/images/clock.png",width: 5.w,),
                                                          ),
                                                          Text("10:40 am",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: const TextStyle(
                                                                    fontSize: 12,fontWeight: FontWeight.w400,
                                                                    color: Color(0xff225C8B)
                                                                )
                                                            ),)
                                                        ],
                                                      ),
                                                      Row(
                                                        children:[
                                                          Text("Egg and Toast with butter and jam",
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
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10.0,bottom: 8),
                                            child: Image.asset("assets/images/egg.png",width: 150.w
                                              ,height: 18.h,),
                                          ),
                                          const Divider(
                                            endIndent: 25,
                                            indent: 25,
                                            color: Color(0xffE5E1E5),
                                            thickness: 1,
                                          ),
                                          Row(
                                            children: [
                                              Image.asset('assets/images/snacks.png',height: 10.h,width: 10.w,),
                                              Expanded(
                                                flex: 1,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text("Snacks",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: const TextStyle(
                                                                    fontSize: 16,fontWeight: FontWeight.w500,
                                                                    color: Color(0xff1E1E1E)
                                                                )),),
                                                          SizedBox(width: 14.h,),
                                                          Padding(
                                                            padding: const EdgeInsets.all(2.5),
                                                            child: Image.asset("assets/images/clock.png",width: 5.w,),
                                                          ),
                                                          Text("12:10 pm",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: const TextStyle(
                                                                    fontSize: 12,fontWeight: FontWeight.w400,
                                                                    color: Color(0xff225C8B)
                                                                )
                                                            ),)
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text("Popcorn",
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
                                          const Divider(
                                            endIndent: 25,
                                            indent: 25,
                                            color: Color(0xffE5E1E5),
                                            thickness: 1,
                                          ),
                                          Row(
                                            children: [
                                              Image.asset('assets/images/lunch.png',height: 10.h,width: 10.w,),
                                              Expanded(
                                                flex: 1,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text("Lunch",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: const TextStyle(
                                                                    fontSize: 16,fontWeight: FontWeight.w500,
                                                                    color: Color(0xff1E1E1E)
                                                                )),),
                                                          SizedBox(width: 15.h,),
                                                          Padding(
                                                            padding: const EdgeInsets.all(2.5),
                                                            child: Image.asset("assets/images/clock.png",width: 5.w,),
                                                          ),
                                                          Text("02:15 pm",
                                                            style: GoogleFonts.poppins(
                                                                textStyle: const TextStyle(
                                                                    fontSize: 12,fontWeight: FontWeight.w400,
                                                                    color: Color(0xff225C8B)
                                                                )
                                                            ),)
                                                        ],
                                                      ),
                                                      Row(
                                                        children:[
                                                          Text("Rice with vegetables and orange juice",
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
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 41.0),
                                            child: Row(
                                              children: [
                                                Image.asset("assets/images/rice.png",
                                                  width: 32.w,),
                                                SizedBox(width: 2.5.w,),
                                                Image.asset("assets/images/juice.png",width: 32.w,),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
