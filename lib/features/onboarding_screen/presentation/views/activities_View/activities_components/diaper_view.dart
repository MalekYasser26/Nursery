import 'package:flutter/material.dart';

class DiaperView extends StatelessWidget {
  const DiaperView({Key? key}) : super(key: key);
  static const String routeName="DiaperView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Diaper View")),
    );
  }
}
