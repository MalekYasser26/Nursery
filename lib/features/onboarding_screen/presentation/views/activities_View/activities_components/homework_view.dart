import 'package:flutter/material.dart';

class HomeWorkView extends StatelessWidget {
  const HomeWorkView({Key? key}) : super(key: key);
  static const String routeName="HomeworkView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Homework View")),
    );
  }
}
