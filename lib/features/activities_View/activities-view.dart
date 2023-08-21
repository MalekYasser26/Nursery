import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/features/activities_View/activities_components/bottle_view.dart';
import 'package:nursery/features/activities_View/activities_components/classes_view.dart';
import 'package:nursery/features/activities_View/activities_components/diaper_view.dart';
import 'package:nursery/features/activities_View/activities_components/food_view.dart';
import 'package:nursery/features/activities_View/activities_components/homework_view.dart';
import 'package:nursery/features/activities_View/activities_components/medical_view.dart';
import 'package:nursery/features/activities_View/activities_components/mood_view.dart';
import 'package:nursery/features/activities_View/activities_components/nap_view.dart';
import 'package:nursery/features/activities_View/activities_components/potty_view.dart';
import 'package:nursery/features/activities_View/activities_components/quiz_view.dart';
import 'package:sizer/sizer.dart';

class ActivitiesView extends StatelessWidget {
  ActivitiesView({Key? key}) : super(key: key);
  final List details=[
    {
      "image":'assets/images/food.png',
      "title":'Food',
      "navegate":FoodView.routeName
    },
    {
      "image": 'assets/images/classes.png',
      "title":'Classes',
      "navegate":ClassesView.routeName
    },
    {
      "image": 'assets/images/medical.png',
      "title":'Medical',
      "navegate":MedicalView.routeName
    },
    {
      "image": 'assets/images/nap.png',
      "title":'Nap',
      "navegate":NapView.routeName
    },
    {
      "image": 'assets/images/bottle.png',
      "title":'Bottle',
      "navegate":BottleView.routeName
    },
    {
      "image": 'assets/images/mood.png',
      "title":'Mood',
      "navegate":MoodView.routeName
    },
    {
      "image": 'assets/images/potty.png',
      "title":'Potty',
      "navegate":PottyView.routeName
    },
    {
      "image": 'assets/images/diaper.png',
      "title":'Diaper',
      "navegate":DiaperView.routeName
    },
    {
      "image": 'assets/images/homework.png',
      "title":'Homework',
      "navegate":HomeWorkView.routeName
    },
    {
      "image": 'assets/images/quiz.png',
      "title":'Quiz',
      "navegate":QuizView.routeName
    },];
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
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.asset('assets/images/notification.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("Please select your child",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16)
                          ),),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 15.h,
                          width: 42.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Image.asset('assets/images/Girl.png',width:double.infinity),
                        ),
                        const Spacer(),
                        Container(
                          height: 15.h,
                          width: 42.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/images/boy.png',width: double.infinity,),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("select activity you want to sea for malak",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(fontWeight: FontWeight.w600,fontSize: 15)
                          ),),
                      ],
                    ),
                    GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: details.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, details[index]['navegate']);
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>details[index]['navegate']));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30.h,
                                width: 45.w,
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
                                  child: Column(
                                    children: [
                                      Image.asset(details[index]['image'],height: 15.h,width: 15.w,),
                                      Text(
                                        details[index]['title'],
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: Color(0xff225C8B),fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                        ),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                    )
                  ]
              ),
            ),
          )),
    );
  }
}
