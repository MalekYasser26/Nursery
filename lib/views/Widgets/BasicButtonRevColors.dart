import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';

class BasicButtonRevColor extends StatelessWidget {
  final WidgetBuilder builder;

  BasicButtonRevColor({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.w, right: 6.w, bottom: 4.h),
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: builder)),
        child: Container(
          height: 5.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xff4a4bb7)),
          ),
          child: Center(
            child: Text(
              "Return to home",
              style: GoogleFonts.poppins(color: AppColors.blueCol),
            ),
          ),
        ),
      ),
    );
  }
}
