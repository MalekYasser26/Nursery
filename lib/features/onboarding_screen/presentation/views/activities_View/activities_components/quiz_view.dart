import 'package:flutter/material.dart';

class QuizView extends StatelessWidget {
  const QuizView({Key? key}) : super(key: key);
  static const String routeName="QuizView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Quiz View")),
    );
  }
}
