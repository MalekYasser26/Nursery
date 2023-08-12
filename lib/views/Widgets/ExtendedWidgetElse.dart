import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'BasicTextFF.dart';
import 'UploadPhotoWidget.dart';

class ExtendedWidgetElse extends StatelessWidget {
  const ExtendedWidgetElse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 8),
      child: Container(
        child: Column(
          children: [
            BasicTextFF(fftext: "Name",),
            BasicTextFF(fftext: "Phone Number",),
            BasicTextFF(fftext: "ID",),
            BasicTextFF(fftext: "Reason",),
            UploadPhotoWidget(),
          ],
        ),
      ),
    );

  }
}
