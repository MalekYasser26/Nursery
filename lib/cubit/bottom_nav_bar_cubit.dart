import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:meta/meta.dart';
import 'package:nursery/constants/constants.dart';
import 'package:nursery/views/screens/CalendarScreen.dart';
import 'package:nursery/views/screens/SettingsScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    HomeScreen(),
    ActivitiesView(),
    CalendarScreen(),
    SettingsScreen()
  ];

  List<GButton>BotNavIcons=[
   GButton(icon: Icons.home,
          text: "Home",

   ) ,
   GButton(icon:Icons.piano,
     text: "Activites",
   ),
   GButton(icon: Icons.calendar_today,
     text: "Calendar",

   ),
   GButton(icon: Icons.settings,
     text: "Settings",

   )];
  List<IconData>BotNavIconss=[
    Icons.home,
    Icons.favorite,
    Icons.search,
    Icons.shopping_cart,
    Icons.person_outline

  ];


}
