import 'package:flutter/material.dart';

class ClassesView extends StatelessWidget {
  const ClassesView({Key? key}) : super(key: key);
  static const String routeName="ClassesView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Classes View")),
    );
  }
}