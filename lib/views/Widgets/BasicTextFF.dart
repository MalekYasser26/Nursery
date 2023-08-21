import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BasicTextFF extends StatelessWidget {
  final String fftext;
  final IconData? suffix;

  final BasicController = TextEditingController();

  BasicTextFF({Key? key, required this.fftext, this.suffix}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 1.h),
      child: TextFormField(
        textDirection: TextDirection.ltr,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        controller: BasicController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: fftext,
          hintStyle: GoogleFonts.poppins(),
          suffixIcon: suffix != null ? Icon(suffix) : null,
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Enter Email";
          } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(BasicController.text!)) {
            return "Enter a correct email form";
          }
          return null;
        },
      ),
    );
  }
}
