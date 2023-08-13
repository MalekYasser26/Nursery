import 'package:flutter/material.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities-view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/classes_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/diaper_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/food_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/homework_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/medical_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/mood_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/nap_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/potty_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/quiz_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/onboarding_view.dart';
import 'package:sizer/sizer.dart';

import 'features/onboarding_screen/presentation/views/activities_View/activities_components/bottle_view.dart';
void main() {
  runApp(const NurseryApp());
}
class NurseryApp extends StatelessWidget {
  const NurseryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return   MaterialApp(
            debugShowCheckedModeBanner: false,
            home:  ActivitiesView(),
            routes: {
              FoodView.routeName :(ctx)=> const FoodView(),
              MedicalView.routeName :(ctx)=> const MedicalView(),
              BottleView.routeName :(ctx)=> const BottleView(),
              PottyView.routeName :(ctx)=>const PottyView(),
              HomeWorkView.routeName :(ctx)=>const HomeWorkView(),
              ClassesView.routeName :(ctx)=>const ClassesView(),
              NapView.routeName :(ctx)=>const NapView(),
              MoodView.routeName :(ctx)=>const MoodView(),
              DiaperView.routeName :(ctx)=>const DiaperView(),
              QuizView.routeName :(ctx)=>const QuizView(),
            },
          );
        }
    );
  }
}
