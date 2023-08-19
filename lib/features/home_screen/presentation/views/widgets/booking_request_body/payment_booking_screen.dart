import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/features/home_screen/presentation/views/widgets/booking_request_body/booking_screen.dart';
import 'package:nursery/features/home_screen/presentation/views/widgets/booking_request_body/confirm_booking_Screen.dart';
import 'package:sizer/sizer.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int ? selectedRadio7;
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
                    Navigator.pop(context,MaterialPageRoute(builder: (ctx)=> const BookingScreen()));
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
                    Text("Select payment method",
                      style:GoogleFonts.poppins(
                          fontSize: 14,fontWeight: FontWeight.w400
                      ) ,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 56.h,
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
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Radio(
                                visualDensity: const VisualDensity(horizontal: -4),
                                activeColor: KPrimaryColor,
                                value: 1,
                                groupValue: selectedRadio7,
                                onChanged: (value) {
                                  setState(() {
                                    selectedRadio7 = value!;
                                  });
                                },
                              ),
                              Text(
                                "Cash",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(fontSize: 16),
                                    color: selectedRadio7 == 1 ? KPrimaryColor : Colors.black,
                                    fontWeight: selectedRadio7 ==1 ? FontWeight.w500 : FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 25.w),
                          Row(
                            children: [
                              Radio(
                                visualDensity: const VisualDensity(horizontal: -4),
                                activeColor: KPrimaryColor,
                                value: 2,
                                groupValue: selectedRadio7,
                                onChanged: (value) {
                                  setState(() {
                                    selectedRadio7 = value!;
                                  });
                                },
                              ),
                              Text(
                                "Visa",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(fontSize: 16,),
                                    color: selectedRadio7 == 2 ? KPrimaryColor : Colors.black,
                                    fontWeight: selectedRadio7 ==2 ? FontWeight.w500 : FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0,left: 15),
                            child: Row(
                              children: [
                                Text("Card Number",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,fontWeight:FontWeight.w500
                                      )
                                  ),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              height: 6.h,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(top: 2,left: 12),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    hintText: "Enter Child name",
                                    hintStyle: const TextStyle(
                                        color: Color(0xffBCBCBC)
                                    )
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8,left: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Expire Date",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontSize: 14,fontWeight:FontWeight.w500
                                              )
                                          ),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0,top: 4),
                                    child: SizedBox(
                                      height: 8.h,
                                      width: 37.w,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            contentPadding: const EdgeInsets.only(top: 2,left: 12),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            hintText: "MM/YY",
                                            hintStyle: const TextStyle(
                                                color: Color(0xffBCBCBC)
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8,left: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("CVV",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontSize: 14,fontWeight:FontWeight.w500
                                              )
                                          ),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0,top: 4),
                                    child: SizedBox(
                                      height: 8.h,
                                      width: 37.w,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            contentPadding: const EdgeInsets.only(top: 2,left: 12),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            hintText: "123",
                                            hintStyle: const TextStyle(
                                                color: Color(0xffBCBCBC)
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0,left: 15),
                            child: Row(
                              children: [
                                Text("Name on card",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,fontWeight:FontWeight.w500
                                      )
                                  ),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              height: 6.h,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(top: 2,left: 12),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    hintText: "Enter Child name",
                                    hintStyle: const TextStyle(
                                        color: Color(0xffBCBCBC)
                                    )
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ),
              SizedBox(height: 13.h,),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ConfirmScreen()));
                },
                child: Container(
                  height:5.h,
                  width:87.w,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: KPrimaryColor
                  ),
                  child:   Center(
                    child: Text("Pay",
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
