import 'package:flutter/material.dart';

class NapView extends StatelessWidget {
  const NapView({Key? key}) : super(key: key);
  static const String routeName="NapView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Nap View")),
    );
  }
}
