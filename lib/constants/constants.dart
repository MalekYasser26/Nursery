import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../core/utils/assets.dart';

class AppColors {
  static const Color blueCol = Color(0xFF225C8B);
  static const Color purbleCol = Color(0xFF601FB5);
  static const Color lightblueCol = Color(0xFF8AC9FE);
  static const Color lightgreenCol = Color(0xFF8BD399);
  static const Color orangeCol = Color(0xFFFEA95C);
  static const Color pinkCol = Color(0xFFD86BA7);
  static const Color redCol = Color(0xFFD32323);
}
List<String> HomeScreenImg = [
  AssetsData.leave,
  AssetsData.emergency,
  AssetsData.complaint,
  AssetsData.calendar,
  AssetsData.take,
  AssetsData.bring,

];
List<String> GalleryList = [
  AssetsData.gal1,
  AssetsData.gal2,
  AssetsData.gal3,
];

List<String> HomeScreenTXT = [
  "Early leave request",
  "Emergency call",
  "Issue a complaint",
  "Booking request",
  "Who will take him",
  "Who will bring him",

];

List<String> ReportIcons = [
  AssetsData.reportImg1,
  AssetsData.reportImg2,
  AssetsData.reportImg3,
  AssetsData.reportImg4,
  AssetsData.reportImg5,
];List<Color> ReportColors = [
  AppColors.lightgreenCol,
  AppColors.blueCol,
  AppColors.orangeCol,
  AppColors.purbleCol,
  AppColors.pinkCol,

];
List<String> ReportTXT = [
  " Malak Checked-in",
  " Malak had a nap from 11:00 am to 11:30 am",
  " Malak had most of her crackers",
  " Malak’s diaper is rash",
  " Malak is playing with color Paints",
];List<String> ReportTime = [
  "09:00 am:",
  "11:00 am:",
  "12:00 pm:",
  "01:30 pm:",
  "02:30 pm:",
];
const List<String> EarlyLeaveButton = <String>['Morning', 'Afternoon',];
List<String> LeaveTime = [
  "09:00 am",
  "09:30 am",
  "10:00 am",
  "10:30 am",
  "11:00 am",
  "11:30 am",
  "12:00 pm",
  "12:30 pm",
  "01:00 pm",
];
List<String> napDate = [
  "11 Feb 2023",
  "12 Feb 2023",
  "13 Feb 2023",
  "14 Feb 2023",
  "15 Feb 2023",
];
List<String> napTXT = [
  " Malak had a nap from 11:00 am to 11:30 am",
  " Malak had a nap from 02:00 pm to 03:30 am",
  " Malak had a nap from 04:00 pm to 04:15 pm",

];
List<String> napTime = [
"11:00 am:",
"2:00 pm:",
"4:00 pm:",
];
List<String> moodDate = [
  "11 Feb 2023",
  "12 Feb 2023",
  "13 Feb 2023",
  "14 Feb 2023",
  "15 Feb 2023",
];
class SvgIcon extends StatelessWidget {
  final String svgString;
  final double size;
  final Color color;

  const SvgIcon({
    required this.svgString,
    this.size = 24,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      svgString,
      width: size,
      height: size,
      color: color,
    );
  }
}
const KPrimaryColor = Color(0xff225C8B);

