import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/features/home_screen/presentation/views/widgets/booking_request_body/booking_screen.dart';
import 'package:sizer/sizer.dart';
class BookingRequestBody extends StatefulWidget {
  const BookingRequestBody({Key? key}) : super(key: key);

  @override
  State<BookingRequestBody> createState() => _BookingRequestBodyState();
}

class _BookingRequestBodyState extends State<BookingRequestBody> {
  int ? selectedRadio;
  int ? selectedRadio2;
  int ? selectedRadio3;
  int ? selectedRadio4;
  int ? selectedRadio5;
  int ? selectedRadio6;

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
                    Navigator.pop(context,(){
                      return const BookingScreen();
                    });
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
                    Text("How many days of staying?",
                      style:GoogleFonts.poppins(
                          fontSize: 14,fontWeight: FontWeight.w400
                      ) ,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  flex: 5,
                  child: Container(
                      padding: const EdgeInsets.only(left: 5),
                      height: selectedRadio==1?40.h: 27.h,
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
                      child:  Column(
                        children: [
                          selectedRadio ==1?
                          Column(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      visualDensity: const VisualDensity(horizontal: -4),
                                      activeColor: KPrimaryColor,
                                      value: 1,
                                      groupValue: selectedRadio,
                                      onChanged: (value){
                                        setState(() {
                                          selectedRadio=value;
                                        });
                                      }
                                  ),
                                  Text("Day",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(fontSize: 16
                                      ),
                                      color: selectedRadio == 1 ? KPrimaryColor : Colors.black,
                                      fontWeight: selectedRadio ==1 ? FontWeight.w500 : FontWeight.w400,
                                    ),),
                                  Text(" ( 100 EGP per day)",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w400, fontSize: 12
                                      ),
                                      color: selectedRadio == 1 ? KPrimaryColor : Colors.black,

                                    ),),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        Text("Child name",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontSize: 14,fontWeight:FontWeight.w500
                                              )
                                          ),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 14.0,left: 8),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.only(top: 2,left: 12),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(8)
                                          ),
                                          hintText: "EX. 3 days",
                                          hintStyle: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  color: Color(0xffBCBCBC),
                                                  fontSize: 12,fontWeight: FontWeight.w400
                                              )
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ): Row(
                            children: [
                              Radio(
                                  visualDensity: const VisualDensity(horizontal: -4),
                                  activeColor: KPrimaryColor,
                                  value: 1,
                                  groupValue: selectedRadio,
                                  onChanged: (value){
                                    setState(() {
                                      selectedRadio=value;
                                    });
                                  }
                              ),
                              Text("Day",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontSize: 16
                                  ),
                                  color: selectedRadio == 1 ? KPrimaryColor : Colors.black,
                                  fontWeight: selectedRadio ==1 ? FontWeight.w500 : FontWeight.w400,
                                ),),
                              Text(" ( 100 EGP per day)",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 12
                                  ),
                                  color: selectedRadio == 1 ? KPrimaryColor : Colors.black,

                                ),),
                            ],
                          ),

                          Row(
                            children: [
                              Radio(
                                  visualDensity: const VisualDensity(horizontal: -4),
                                  activeColor: KPrimaryColor,
                                  value: 2,
                                  groupValue: selectedRadio,
                                  onChanged: (value){
                                    setState(() {
                                      selectedRadio=value;
                                    });
                                  }
                              ),
                              Text("Week",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 16
                                    ),
                                    color: selectedRadio == 2 ? KPrimaryColor : Colors.black,
                                    fontWeight: selectedRadio ==2 ? FontWeight.w500 : FontWeight.w400
                                ),),
                              Text(" ( 400 EGP )",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight:FontWeight.w400,fontSize: 12
                                  ),
                                  color: selectedRadio == 2 ? KPrimaryColor : Colors.black,
                                ),),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  visualDensity: const VisualDensity(horizontal: -4),
                                  activeColor: KPrimaryColor,
                                  value: 3,
                                  groupValue: selectedRadio,
                                  onChanged: (value){
                                    setState(() {
                                      selectedRadio=value;
                                    });
                                  }
                              ),
                              Text("Month",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 16
                                    ),
                                    color: selectedRadio == 3 ? KPrimaryColor : Colors.black,
                                    fontWeight: selectedRadio ==3 ? FontWeight.w500 : FontWeight.w400
                                ),),
                              Text(" ( 1800 EGP )",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight:FontWeight.w400,fontSize: 12
                                  ),
                                  color: selectedRadio == 3 ? KPrimaryColor : Colors.black,
                                ),),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  visualDensity: const VisualDensity(horizontal: -4),
                                  activeColor: KPrimaryColor,
                                  value: 4,
                                  groupValue: selectedRadio,
                                  onChanged: (value){
                                    setState(() {
                                      selectedRadio=value;
                                    });
                                  }
                              ),
                              Text("Half Month",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 16
                                    ),
                                    color: selectedRadio == 4 ? KPrimaryColor : Colors.black,
                                    fontWeight: selectedRadio ==4 ? FontWeight.w500 : FontWeight.w400
                                ),),
                              Text(" ( 900 EGP )",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight:FontWeight.w400,fontSize: 12
                                  ),
                                  color: selectedRadio == 4 ? KPrimaryColor : Colors.black,
                                ),),
                            ],
                          ),

                        ],
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("Child Data",
                      style:GoogleFonts.poppins(
                          fontSize: 14,fontWeight: FontWeight.w400
                      ) ,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 29.h,
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
                    child:  Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0,left: 15),
                          child: Row(
                            children: [
                              Text("Child name",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,fontWeight:FontWeight.w500
                                    )
                                ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            height: 6.h,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(top: 2,left: 12),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  hintText: "Enter Child name",
                                  hintStyle: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Color(0xffBCBCBC),
                                          fontSize: 12,fontWeight: FontWeight.w400
                                      )
                                  )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Text("Child age",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,fontWeight:FontWeight.w500
                                    )
                                ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            height: 6.h,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(top: 2,left: 12),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  hintText: "Enter Child age",
                                  hintStyle: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Color(0xffBCBCBC),
                                          fontSize: 12,fontWeight: FontWeight.w400
                                      )
                                  )
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("Food",
                      style:GoogleFonts.poppins(
                          fontSize: 14,fontWeight: FontWeight.w400
                      ) ,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
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
                    child:  Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    visualDensity: const VisualDensity(horizontal: -4),
                                    activeColor: KPrimaryColor,
                                    value: 1,
                                    groupValue: selectedRadio2,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedRadio2 = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "With food",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(fontSize: 16),
                                        color: selectedRadio2 == 1 ? KPrimaryColor : Colors.black,
                                        fontWeight: selectedRadio2 ==1 ? FontWeight.w500 : FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Radio(
                                    visualDensity: const VisualDensity(horizontal: -4),
                                    activeColor: KPrimaryColor,
                                    value: 2,
                                    groupValue: selectedRadio2,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedRadio2 = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Without food",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(fontSize: 16,),
                                        color: selectedRadio2 == 2 ? KPrimaryColor : Colors.black,
                                        fontWeight: selectedRadio2 ==2 ? FontWeight.w500 : FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: const Color(0xffE5E2E5)
                              )
                          ),
                          height: 16.h,
                          width: 80.w,
                          child: Text(
                            "Add the forbidden food for your child",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,fontSize: 14,
                                    color: Color(0xffA7A7A7)
                                )
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("Medicine",
                      style:GoogleFonts.poppins(
                          fontSize: 14,fontWeight: FontWeight.w400
                      ) ,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
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
                    child:  Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    visualDensity: const VisualDensity(horizontal: -4),
                                    activeColor: KPrimaryColor,
                                    value: 1,
                                    groupValue: selectedRadio3,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedRadio3 = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Yes",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(fontSize: 16),
                                        color: selectedRadio3 == 1 ? KPrimaryColor : Colors.black,
                                        fontWeight: selectedRadio3 ==1 ? FontWeight.w500 : FontWeight.w400
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
                                    groupValue: selectedRadio3,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedRadio3 = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "No",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(fontSize: 16,),
                                        color: selectedRadio3 == 2 ? KPrimaryColor : Colors.black,
                                        fontWeight: selectedRadio3 ==2 ? FontWeight.w500 : FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: const Color(0xffE5E2E5),
                              )
                          ),
                          height: 16.h,
                          width: 80.w,
                          child: Text(
                            "Mention the medicine that he will take",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,fontSize: 14,
                                    color: Color(0xffA7A7A7)
                                )
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("Check-in",
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
                    height: 14.h,
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
                    child:  Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Radio(
                                    visualDensity: const VisualDensity(horizontal: -4),
                                    activeColor: KPrimaryColor,
                                    value: 1,
                                    groupValue: selectedRadio4,
                                    onChanged: (value){
                                      setState(() {
                                        selectedRadio4=value;
                                      });
                                    }
                                ),
                                Text("I will take him",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(fontSize: 16
                                      ),
                                      color: selectedRadio4 == 1 ? KPrimaryColor : Colors.black,
                                      fontWeight: selectedRadio4 ==1 ? FontWeight.w500 : FontWeight.w400
                                  ),),
                              ],
                            ),
                            SizedBox(width: 4.w,),
                            Row(
                              children: [
                                Radio(
                                    visualDensity: const VisualDensity(horizontal: -4),
                                    activeColor: KPrimaryColor,
                                    value: 2,
                                    groupValue: selectedRadio4,
                                    onChanged: (value){
                                      setState(() {
                                        selectedRadio4=value;
                                      });
                                    }
                                ),
                                Text("Bus",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 16
                                      ),
                                      color: selectedRadio4 == 2 ? KPrimaryColor : Colors.black,
                                      fontWeight: selectedRadio4 ==2 ? FontWeight.w500 : FontWeight.w400
                                  ),),
                                Text(" (fees)",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight:FontWeight.w400,fontSize: 12
                                    ),
                                    color: selectedRadio4 == 2 ? KPrimaryColor : Colors.black,
                                  ),),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                visualDensity: const VisualDensity(horizontal: -4),
                                activeColor: KPrimaryColor,
                                value: 3,
                                groupValue: selectedRadio4,
                                onChanged: (value){
                                  setState(() {
                                    selectedRadio4=value;
                                  });
                                }
                            ),
                            Text("Someone else",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16
                                  ),
                                  color: selectedRadio4 == 3 ? KPrimaryColor : Colors.black,
                                  fontWeight: selectedRadio4 ==3 ? FontWeight.w500 : FontWeight.w400
                              ),),
                          ],
                        ),

                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("Check-out",
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
                    height: 14.h,
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
                    child:  Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Radio(
                                    visualDensity: const VisualDensity(horizontal: -4),
                                    activeColor: KPrimaryColor,
                                    value: 1,
                                    groupValue: selectedRadio5,
                                    onChanged: (value){
                                      setState(() {
                                        selectedRadio5=value;
                                      });
                                    }
                                ),
                                Text("I will take him",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(fontSize: 16
                                      ),
                                      color: selectedRadio5 == 1 ? KPrimaryColor : Colors.black,
                                      fontWeight: selectedRadio5 ==1 ? FontWeight.w500 : FontWeight.w400
                                  ),),
                              ],
                            ),
                            SizedBox(width: 4.w,),
                            Row(
                              children: [
                                Radio(
                                    visualDensity: const VisualDensity(horizontal: -4),
                                    activeColor: KPrimaryColor,
                                    value: 2,
                                    groupValue: selectedRadio5,
                                    onChanged: (value){
                                      setState(() {
                                        selectedRadio5=value;
                                      });
                                    }
                                ),
                                Text("Bus",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 16
                                      ),
                                      color: selectedRadio5 == 2 ? KPrimaryColor : Colors.black,
                                      fontWeight: selectedRadio5 ==2 ? FontWeight.w500 : FontWeight.w400
                                  ),),
                                Text(" (fees)",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight:FontWeight.w400,fontSize: 12
                                    ),
                                    color: selectedRadio4 == 2 ? KPrimaryColor : Colors.black,
                                  ),),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                visualDensity: const VisualDensity(horizontal: -4),
                                activeColor: KPrimaryColor,
                                value: 3,
                                groupValue: selectedRadio5,
                                onChanged: (value){
                                  setState(() {
                                    selectedRadio5=value;
                                  });
                                }
                            ),
                            Text("Someone else",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16
                                  ),
                                  color: selectedRadio5 == 3 ? KPrimaryColor : Colors.black,
                                  fontWeight: selectedRadio5 ==3 ? FontWeight.w500 : FontWeight.w400
                              ),),
                          ],
                        ),

                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("Extra time",
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
                    height: 25.h,
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
                    child:  Column(
                      children: [
                        Row(
                          children: [
                            Radio(
                                visualDensity: const VisualDensity(horizontal: -4),
                                activeColor: KPrimaryColor,
                                value: 1,
                                groupValue: selectedRadio6,
                                onChanged: (value){
                                  setState(() {
                                    selectedRadio6=value;
                                  });
                                }
                            ),
                            Text("Default time ( 09:00 am - 04:00",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontSize: 16
                                  ),
                                  color: selectedRadio6 == 1 ? KPrimaryColor : Colors.black,
                                  fontWeight: selectedRadio6 ==1 ? FontWeight.w500 : FontWeight.w400
                              ),),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:30),
                              child: Text("pm)",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 16
                                    ),
                                    color: selectedRadio6 == 1 ? KPrimaryColor : Colors.black,
                                    fontWeight: selectedRadio6 ==1 ? FontWeight.w500 : FontWeight.w400
                                ),),
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            Radio(
                                visualDensity: const VisualDensity(horizontal: -4),
                                activeColor: KPrimaryColor,
                                value: 2,
                                groupValue: selectedRadio6,
                                onChanged: (value){
                                  setState(() {
                                    selectedRadio6=value;
                                  });
                                }
                            ),
                            Text("Default time ( 09:00 am - 04:00",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontSize: 16
                                  ),
                                  color: selectedRadio6 == 2 ? KPrimaryColor : Colors.black,
                                  fontWeight: selectedRadio6 ==2 ? FontWeight.w500 : FontWeight.w400
                              ),),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:30),
                              child: Text("pm)",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 16
                                    ),
                                    color: selectedRadio6 ==  2? KPrimaryColor : Colors.black,
                                    fontWeight: selectedRadio6 ==2 ? FontWeight.w500 : FontWeight.w400
                                ),),
                            ),
                            Text(" (fees)",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight:FontWeight.w400,fontSize: 12
                                ),
                                color: selectedRadio6 == 2 ? KPrimaryColor : Colors.black,
                              ),),
                          ],
                        ),

                      ],
                    )
                ),
              ),
              SizedBox(height: 4.h,),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BookingScreen()));
                },
                child: Container(
                  height:5.h,
                  width:87.w,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: KPrimaryColor
                  ),
                  child:   Center(
                    child: Text("Next",
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
