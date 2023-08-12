import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';

class BasicButton extends StatelessWidget {
  final String text;
  final WidgetBuilder builder;

  BasicButton({Key? key, required this.text, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.w, right: 6.w, bottom: 2.h),
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: builder)),
        child: Container(
          height: 5.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.blueCol,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xff4a4bb7)),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

