import 'package:flutter/material.dart';

class GalleryWidget extends StatelessWidget {
   GalleryWidget({Key? key,required this.Imgpath}) : super(key: key);
  String Imgpath ;
  @override
  Widget build(BuildContext context) {
    return Image.asset(Imgpath,height: 100,);
  }
}
