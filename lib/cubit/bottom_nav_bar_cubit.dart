import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:meta/meta.dart';
import 'package:nursery/cust_icon_icons.dart';
import 'package:nursery/views/screens/CalendarScreen/CalendarScreen.dart';
import 'package:nursery/views/screens/SettingsScreen.dart';
import '../features/onboarding_screen/presentation/views/activities_View/activities-view.dart';
import '../views/screens/HomeScreen/HomeScreen.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());
  int bottomNavIndex = 0 ;
  SelectIndex({required int index}){
    bottomNavIndex = index;
  }
  List<Widget>Screens = [
    const HomeScreen(),
    ActivitiesView(),
    const CalendarScreen(),
    const SettingsScreen()
  ];

  List<GButton>BotNavIcons=[
   const GButton(icon: CustIcon.home,
          text: "Home",

   ) ,
   const GButton(icon: CustIcon.activites,
     text: "Activites",
   ),
   const GButton(icon: CustIcon.calendar,
     text: "Calendar",

   ),
   const GButton(icon: CustIcon.settings,
     text: "Settings",

   ),

  ];
  List<IconData>BotNavIconss=[
    Icons.home,
    Icons.favorite,
    Icons.search,
    Icons.shopping_cart,
    Icons.person_outline

  ];


}
