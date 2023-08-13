import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';

class BasicButtonRevColor extends StatelessWidget {
  final WidgetBuilder builder;
  final  Color color  ;
  final  Color Textcolor  ;
  final  String TextSt  ;
  final  Color borderColor  ;
  BasicButtonRevColor({Key? key, required this.builder,required this.color,required this.Textcolor,required this.TextSt,required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: builder)),
      child: Container(
        height: 5.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor),
        ),
        child: Center(
          child: Text(
            TextSt,
            style: GoogleFonts.poppins(color: Textcolor),
          ),
        ),
      ),
    );
  }
}
