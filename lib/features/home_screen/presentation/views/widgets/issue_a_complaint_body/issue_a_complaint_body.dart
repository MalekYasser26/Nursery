import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/features/home_screen/presentation/views/widgets/issue_a_complaint_body/issue_confirm_screen.dart';
import 'package:sizer/sizer.dart';

class IssueScreenBody extends StatelessWidget {
  const IssueScreenBody({Key? key}) : super(key: key);

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
                    //home screen
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
                  //     Navigator.pushReplacement(context,MaterialPageRoute(builder: (ctx)=> const HomeScreen()));
                },
                    icon: const Icon(Icons.arrow_back_ios,size: 20,weight: 10,
                      color: Color(0xff225C8B),)),
                Text("Issue A complaint",style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff1E1E1E)
                    )
                ),),
              ],),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text("Complaint Details",
                    style:GoogleFonts.poppins(
                        fontSize: 14,fontWeight: FontWeight.w400
                    ) ,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 35.h,
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
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0,left: 15),
                          child: Row(
                            children: [
                              Text("Select complaint type",
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
                                  suffixIcon: const Icon(Icons.keyboard_arrow_down),
                                  contentPadding: const EdgeInsets.only(top: 2,left: 12),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  hintText: "Bus, Nursery, My Child",
                                  hintStyle: const TextStyle(
                                      color: Color(0xffBCBCBC)
                                  )
                              ),
                            ),
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
                    ),
                  )
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const IssueConfirmScreen()));
              },
              child: Container(
                height:5.h,
                width:87.w,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: KPrimaryColor
                ),
                child:   Center(
                  child: Text("Confirm",
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
