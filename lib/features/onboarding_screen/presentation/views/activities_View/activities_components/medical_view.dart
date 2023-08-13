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
                    Image.asset('assets/images/img_12.png',height: 10.h,width: 10.w,),
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
                        child: Image.asset('assets/images/img_13.png',),
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
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context, details[index]['navegate']);
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>details[index]['navegate']));
                          },
                          child: Padding(
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
                                  ],
                                ),
                                Container(
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
                                  child: Center(
                                    child:Column(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(bottom: 10),
                                              height: 40.h,
                                              width: 60.w,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                boxShadow:  [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(.3),
                                                    blurRadius: 5.0, // soften the shadow
                                                    spreadRadius: 1, //extend the shadow
                                                    offset: const Offset(
                                                      2.0, // Move to right 5  horizontally
                                                      0.0, // Move to bottom 5 Vertically
                                                    ),
                                                  )
                                                ],
                                              ),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset('assets/images/img_14.png'),
                                                      Column(
                                                        children: [
                                                          const Row(
                                                            children: [
                                                              Text("Breakfast"),
                                                              Spacer(),
                                                              Icon(Icons.access_time_sharp),
                                                              Text("10:40 am")
                                                            ],
                                                          ),
                                                          const Text("Egg and Toast with butter and jam",style: TextStyle(color: Colors.grey),),
                                                          Image.asset('assets/images/img_15.png')
                                                        ],
                                                      )

                                                    ],
                                                  ),
                                                  const Divider(
                                                    color: Colors.grey,
                                                    thickness: 2,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Image.asset('assets/images/img_16.png'),
                                                      const Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text("Snacks"),
                                                              Spacer(),
                                                              Icon(Icons.access_time_sharp),
                                                              Text("12:10 pm")
                                                            ],
                                                          ),
                                                          Text("Popcorn",style: TextStyle(color: Colors.grey),),
                                                        ],
                                                      )

                                                    ],
                                                  ),
                                                  const Divider(
                                                    color: Colors.grey,
                                                    thickness: 2,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Image.asset('assets/images/img_17.png',width: 15.w,height: 15.h,),
                                                      Column(
                                                        children: [
                                                          const Row(
                                                            children: [
                                                              Text("Lunch"),
                                                              Spacer(),
                                                              Icon(Icons.access_time_sharp),
                                                              Text("02:15 pm")
                                                            ],
                                                          ),
                                                          const Text("Rice with vegetables and orange juice",style: TextStyle(color: Colors.grey),),
                                                          Row(
                                                            children: [
                                                              Image.asset('assets/images/img_18.png'),
                                                              Image.asset('assets/images/img_19.png')
                                                            ],
                                                          )
                                                        ],
                                                      )

                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ));
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
