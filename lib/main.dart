import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nursery/cubit/bottom_nav_bar_cubit.dart';
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
            ),
          );
        }
    );
  }
}

