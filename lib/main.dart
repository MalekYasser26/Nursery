import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nursery/cubit/bottom_nav_bar_cubit.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/bottle_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/classes_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/diaper_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/food_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/homework_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/medical_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/mood_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/nap_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/potty_view.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/activities_View/activities_components/quiz_view.dart';
import 'package:nursery/views/screens/SplashScreen/SplashScreen.dart';
import 'package:sizer/sizer.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) =>BottomNavBarCubit(),),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
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

            ),
          );
        }
    );
  }
}

