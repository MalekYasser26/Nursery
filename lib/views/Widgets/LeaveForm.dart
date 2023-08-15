import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'BasicTextFF.dart';

class LeaveFormWidget extends StatelessWidget {
  const LeaveFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Container(
        child: Column(
          children: [
            BasicTextFF(fftext: "Name",),
            BasicTextFF(fftext: "Phone Number",),
            BasicTextFF(fftext: "ID",),
          ],
        ),
      ),
    );
  }
}
