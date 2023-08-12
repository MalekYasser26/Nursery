import 'package:flutter/material.dart';
import 'package:nursery/views/screens/HomeScreen/TakeBringScreens/TakeScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap:() =>  Navigator.push(context,
              MaterialPageRoute(builder: (context) => TakeBringChildScreen(TakeOrBring: "Who will take my child?") ,)),
              child: Text("take")),
          SizedBox(height: 100,),
          InkWell(
              onTap:() =>  Navigator.push(context,
              MaterialPageRoute(builder: (context) => TakeBringChildScreen(TakeOrBring: "Who will bring my child?") ,)),
              child: Text("bring")),
        ],
      )),
    );
  }
}
