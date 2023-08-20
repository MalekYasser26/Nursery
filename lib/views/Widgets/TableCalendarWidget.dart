import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery/constants/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarWidget extends StatefulWidget {
   TableCalendarWidget({Key? key,required this.attended,required this.absent,required this.holiday}) : super(key: key);
  final List<DateTime> attended;
  final List<DateTime> absent;
  final List<DateTime> holiday;

  @override
  State<TableCalendarWidget> createState() => _TableCalendarWidgetState();
}

class _TableCalendarWidgetState extends State<TableCalendarWidget> {
  DateTime today = DateTime.now();
  // void SelectDay(DateTime day , DateTime foucsedDay) {
  //   setState(() {
  //     today = day ;
  //   });
  // }


  late final ValueNotifier<List> selectedEvents ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TableCalendar(
            calendarBuilders: CalendarBuilders(
              defaultBuilder: (context, day, focusedDay) {
                for (DateTime d in widget.attended) {

                    if (day.day == d.day &&
                      day.month == d.month &&
                      day.year == d.year) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height :1.h),
                        Container(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${day.day}',
                                style:  GoogleFonts.poppins(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                          ),
                        CircleAvatar(
                          radius: 1.w,
                          backgroundColor: AppColors.greenCol,
                        )
                      ],
                    );
                  }
                }
                for (DateTime d in widget.absent) {
                  if (day.day == d.day &&
                      day.month == d.month &&
                      day.year == d.year) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height :1.h),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${day.day}',
                                  style:  GoogleFonts.poppins(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 1.w,
                          backgroundColor: AppColors.redCol,
                        )
                      ],
                    );
                  }
                }
                for (DateTime d in widget.holiday) {
                  if (day.day == d.day &&
                      day.month == d.month &&
                      day.year == d.year) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height :1.h),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${day.day}',
                                  style: GoogleFonts.poppins(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 1.w,
                          backgroundColor: AppColors.orangeCol,
                        )
                      ],
                    );
                  }
                }
                return null;
              },
            ),
            calendarStyle: CalendarStyle(
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
                outsideDecoration:  BoxDecoration(
                    shape: BoxShape.rectangle
                ),
                rangeEndDecoration:  BoxDecoration(
                    shape: BoxShape.rectangle
                ),
                rangeStartDecoration:  BoxDecoration(
                    shape: BoxShape.rectangle
                ),
                rowDecoration:  BoxDecoration(
                    shape: BoxShape.rectangle
                ),
                withinRangeDecoration:  BoxDecoration(
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
            // onDaySelected: SelectDay,


          ),
        )
      ],
    );
  }
}