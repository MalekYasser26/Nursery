import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/features/settings_view/presentation_settings_screen/views_settings_screen/widgets_setting_screen/fill_form_body/fill_form_view.dart';
import 'package:sizer/sizer.dart';

class SettingsScreenBody extends StatelessWidget {
  const SettingsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Image.asset('assets/images/notification.png',),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 25.sp,
                  child: Image.asset("assets/images/profile.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lonnie Murphy",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 14,fontWeight: FontWeight.w600
                            )
                        ),),
                      Row(
                        children: [
                          Text("@Lonnie324",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color(0xffA7A7A7),
                                    fontSize: 12,fontWeight: FontWeight.w400
                                )
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 28.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.blueGrey.withOpacity(.2)
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/changeicon.png",height:4.h,width: 4.w,),
                      const Spacer(),
                      Text("Change",style: GoogleFonts.josefinSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: KPrimaryColor
                      ),)
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  height: 38.h,
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
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("About Nursery",
                              style:GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.w400
                                  )
                              ) ,),
                            const Spacer(),
                            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_outlined,
                              weight: 5,
                              color: Color(0xffA7A7A7),
                              size: 17,),)
                          ],
                        ),
                        Row(
                          children: [
                            Text("Change username request",
                              style:GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.w400
                                  )
                              ) ,),
                            const Spacer(),
                            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_outlined,
                              weight: 5,
                              color: Color(0xffA7A7A7),
                              size: 17,),)
                          ],
                        ),
                        Row(
                          children: [
                            Text("Change password request",
                              style:GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.w400
                                  )
                              ) ,),
                            const Spacer(),
                            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_outlined,
                              weight: 5,
                              color: Color(0xffA7A7A7),
                              size: 17,),)
                          ],
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const FillFormScreen()));
                          },
                          child: Row(
                            children: [
                              Text("Fill form",
                                style:GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 16,fontWeight: FontWeight.w400
                                    )
                                ) ,),
                              const Spacer(),
                              IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_outlined,
                                weight: 5,
                                color: Color(0xffA7A7A7),
                                size: 17,),)
                            ],
                          ),
                        ),
                        const Divider(indent: 10,
                            endIndent: 10,
                            thickness: 1,
                            color: Color(0xffE5E1E5)
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child:
                          Row(
                            children: [
                              Text("Logout",
                                style:GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 16,fontWeight: FontWeight.w400,
                                        color: Color(0xffD32323)
                                    )
                                ) ,),

                            ],
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
