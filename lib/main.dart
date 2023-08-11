import 'package:flutter/material.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/onboarding_view.dart';
import 'package:sizer/sizer.dart';
void main() {
  runApp(const NurseryApp());
}
class NurseryApp extends StatelessWidget {
  const NurseryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return  const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: OnBoardingView(),
          );
        }
    );
  }
}
