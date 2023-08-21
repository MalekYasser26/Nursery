import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/features/home_screen/presentation/views/widgets/booking_request_body/booking_request_body.dart';
import 'package:nursery/features/home_screen/presentation/views/widgets/booking_request_body/payment_booking_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:dotted_border/dotted_border.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                      Navigator.pop(context,(){
                        return const BookingRequestBody();
                      });
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
                mainAxisAlignment:MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  },
                      icon: const Icon(Icons.arrow_back_ios,size: 20,weight: 10,
                        color: Color(0xff225C8B),)),
                  Text("Booking Request",style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff1E1E1E)
                      )
                  ),),
                ],),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("Upload photos",
                      style:GoogleFonts.poppins(
                          fontSize: 14,fontWeight: FontWeight.w400
                      ) ,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: const EdgeInsets.only(left: 5),
                    height: 34.h,
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
                        Padding(
                          padding: const EdgeInsets.all(15.0),
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
                                    child: Text("Upload Personal Photo",style: GoogleFonts.lato(
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
                          padding: const EdgeInsets.only(left: 15.0,right: 15),
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
                      ],
                    )
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: const EdgeInsets.only(left: 5),
                    height: 32.h,
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
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child:
                          Row(
                            children: [
                              Text("Summary",
                                style:GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 16,fontWeight: FontWeight.w600
                                    )
                                ) ,),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("Staying Fees",
                                style:GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,fontWeight: FontWeight.w400,
                                        color: Color(0xffA7A7A7)
                                    )
                                ) ,),
                              const Spacer(),
                              Text("Week x 400 EGP",
                                style:GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,fontWeight: FontWeight.w500
                                    )
                                ) ,),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("Food Fees",
                                style:GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,fontWeight: FontWeight.w400,
                                        color: Color(0xffA7A7A7)
                                    )
                                ) ,),
                              const Spacer(),
                              Text("1200 EGP",
                                style:GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,fontWeight: FontWeight.w500
                                    )
                                ) ,),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("Bus Fees",
                                style:GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,fontWeight: FontWeight.w400,
                                        color: Color(0xffA7A7A7)
                                    )
                                ) ,),
                              const Spacer(),
                              Text("2000 EGP",
                                style:GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,fontWeight: FontWeight.w500
                                    )
                                ) ,),
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
                              Text("Total",
                                style:GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 16,fontWeight: FontWeight.w600
                                    )
                                ) ,),
                              const Spacer(),
                              Text("3600 EGP",
                                style:GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 16,fontWeight: FontWeight.w600
                                    )
                                ) ,),
                            ],
                          ),
                        ),
                      ],
                    )
                ),
              ),
              SizedBox(height: 3.h,),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const PaymentScreen()));
                },
                child: Container(
                  height:5.h,
                  width:87.w,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: KPrimaryColor
                  ),
                  child:   Center(
                    child: Text("Book",
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
