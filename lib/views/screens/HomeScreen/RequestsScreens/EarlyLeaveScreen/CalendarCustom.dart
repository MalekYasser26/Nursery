import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nursery/constants/constants.dart';
import 'package:sizer/sizer.dart';
class DatePickerCustom extends StatefulWidget {
  const DatePickerCustom({Key? key}) : super(key: key);

  @override
  State<DatePickerCustom> createState() => _DatePickerCustomState();
}

class _DatePickerCustomState extends State<DatePickerCustom> {
  int selectedIndex = 0;
  DateTime now = DateTime.now();
  late DateTime lastDayOfMonth;
  @override
  void initState() {
    super.initState();
    lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(height: 1.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(
              lastDayOfMonth.day,
                  (index) {
                final currentDate = now.add(Duration(days: now.day+index-1));
                final dayName = DateFormat.E().format(currentDate);
                return GestureDetector(
                  onTap: () => setState(() {
                    selectedIndex = index;
                    print(index);
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: selectedIndex == index
                          ? AppColors.orangeCol
                          : Colors.transparent,
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 4.h,
                          width: 13.w,
                          alignment: Alignment.center,
                          child: Text(
                            dayName,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                         if (lastDayOfMonth.day ==31 && now.day+index<=31) Text(
                          "${now.day+index}",
                          style:  TextStyle(
                            fontSize: 14.sp,
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ) else if (lastDayOfMonth.day==30 &&now.day+index<=30) Text(
                           "${now.day+index}",
                           style:  TextStyle(
                             fontSize: 14.sp,
                             color: selectedIndex == index
                                 ? Colors.white
                                 : Colors.black54,
                             fontWeight: FontWeight.bold,
                           ),
                         ) else if(lastDayOfMonth.month==2 &&now.day+index<lastDayOfMonth.day)
                           Text(
                           "${now.day+index}",
                           style:  TextStyle(
                             fontSize: 14.sp,
                             color: selectedIndex == index
                                 ? Colors.white
                                 : Colors.black54,
                             fontWeight: FontWeight.bold,
                           ),
                         ) else
                           Text(
                           "${now.day + index - lastDayOfMonth.day}",
                           style:  TextStyle(
                             fontSize: 14.sp,
                             color: selectedIndex == index
                                 ? Colors.white
                                 : Colors.black54,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                          CircleAvatar(
                          radius: 3.sp,
                          backgroundColor:selectedIndex == index
                              ? Colors.white
                              : Colors.transparent,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );


  }
}