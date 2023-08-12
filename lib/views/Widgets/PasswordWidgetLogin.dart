import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PassWidgetLogin extends StatefulWidget {
  const PassWidgetLogin({Key? key}) : super(key: key);

  @override
  State<PassWidgetLogin> createState() => _PassWidgetLoginState();
}
bool eyePass = true;

class _PassWidgetLoginState extends State<PassWidgetLogin> {
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        controller:passController,
        obscureText: eyePass,
        decoration: InputDecoration(border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
          hintText: "Enter your password",
            hintStyle: GoogleFonts.josefinSans(),
          suffixIcon: IconButton(
            icon: Icon(
              eyePass ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                eyePass = !eyePass;
              });
            },
          ),

        ),
        keyboardType: TextInputType.visiblePassword,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Enter Password";
          } else if (value.length < 8) {
            return "Password must be more than 8";
          }
          return null;
        },

      ),
    );
  }
}
