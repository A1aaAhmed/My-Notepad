// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:tryyy/modules/appbar/appBarScreen/Notifications.dart';
import 'package:tryyy/modules/appbar/appBarScreen/menu.dart';
import 'package:tryyy/modules/appbar/appBarScreen/search.dart';

import '../../layout/appbar/appbar.dart';
import '../../layout/appbar/homeScreen.dart';




//emulator -list-avds
//emulator @NameOfAvd
// alt + enter mix the icon in icon button


class HomePage extends StatefulWidget{
  static int currentScreen=0;


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<Widget>Screens=[
    HomeScreen(),
    appBarMenuScreen(),
    appBarSearchScreen(),
    appNotifiScreen()

  ];

@override
  Widget build(BuildContext context) {
  print(HomePage.currentScreen);

  //matrial app for the homepage
  //sacfflod for the screens
  return Scaffold(
    appBar:Bar(),
    // ignore: avoid_unnecessary_containers
    body:Screens[HomePage.currentScreen],
  );

  }


}