import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailWidgetLogin extends StatefulWidget {
  const EmailWidgetLogin({Key? key}) : super(key: key);

  @override
  State<EmailWidgetLogin> createState() => _EmailWidgetLoginState();
}

class _EmailWidgetLoginState extends State<EmailWidgetLogin> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        textDirection: TextDirection.ltr,
        onTapOutside: (event) =>
            FocusManager.instance.primaryFocus?.unfocus(),
        controller: emailController,
        decoration: InputDecoration(border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
          hintText: "Enter your username",hintStyle: GoogleFonts.josefinSans()
         ),
        keyboardType: TextInputType.emailAddress,


        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Enter Email";
          } else if (
          RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(emailController.text!)==false)
          {
            return "Enter a correct email form";
          }
          return null;
        },

      ),
    );
  }
}
