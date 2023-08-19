import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarWidget extends StatefulWidget {
  const TableCalendarWidget({Key? key}) : super(key: key);

  @override
  State<TableCalendarWidget> createState() => _TableCalendarWidgetState();
}

class _TableCalendarWidgetState extends State<TableCalendarWidget> {
  DateTime today = DateTime.now();
  void SelectDay(DateTime day , DateTime foucsedDay) {
  setState(() {
    today = day ;
  });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
            Container(
              height: 50.h,
              child: TableCalendar(
                  calendarStyle: CalendarStyle(
                    defaultTextStyle: GoogleFonts.poppins(color: Colors.black),
                    todayTextStyle: GoogleFonts.poppins(color: Colors.black),
                    selectedTextStyle:GoogleFonts.poppins(color: Colors.black) ,
                    defaultDecoration: BoxDecoration(
                        shape: BoxShape.rectangle
                    ),
                    holidayDecoration:BoxDecoration(
                        shape: BoxShape.rectangle
                    ),
                    disabledDecoration: BoxDecoration(
                        shape: BoxShape.rectangle
                    ),
                    markerDecoration: BoxDecoration(
                        shape: BoxShape.rectangle
                    ),
                    weekendDecoration: BoxDecoration(
                        shape: BoxShape.rectangle
                    ),
                    todayDecoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: AppColors.blueCol),
                      borderRadius: BorderRadius.circular(20),
                      shape: BoxShape.rectangle
                    ),
                    cellMargin: EdgeInsets.symmetric(horizontal: 2.w)
                  ),
                  weekendDays: [
                    DateTime.friday,
                    DateTime.saturday,
                  ],
                  headerStyle: HeaderStyle(formatButtonVisible: false,leftChevronVisible: false, rightChevronIcon: Icon(Icons.keyboard_arrow_down),
                      titleTextStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 15.sp),
                  ),
                  focusedDay: today,
                  selectedDayPredicate: (day) =>isSameDay(day,today),
                  firstDay: DateTime.utc(2023,1,1),
                  lastDay: DateTime.utc(2023,12,31),
                  onDaySelected: SelectDay,


              ),
            )
        ],
      ),
    );
  }
}
