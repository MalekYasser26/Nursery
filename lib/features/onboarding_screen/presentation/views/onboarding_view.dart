import 'package:flutter/material.dart';
import 'package:nursery/features/onboarding_screen/presentation/views/widgets/onboarding_body/onboarding_body.dart';
class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
