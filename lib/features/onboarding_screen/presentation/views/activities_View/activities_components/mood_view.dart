import 'package:flutter/material.dart';

class MoodView extends StatelessWidget {
  const MoodView({Key? key}) : super(key: key);
  static const String routeName="MoodView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Mood View")),
    );
  }
}