import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ongoingproject/constants/constants.dart';
import 'package:ongoingproject/pages/homepage.dart';
import 'package:ongoingproject/pages/settings.dart';
import 'package:ongoingproject/pages/tools.dart';



class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex=0;
 

  
  List pages=[
    const Homepage(),
    const ToolsPage(),
    const SettingsPage()
      ];
   
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // resizeToAvoidBottomInset: true,
     bottomNavigationBar: Container(margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
       child: BottomNavyBar(backgroundColor: cardcolor,
        borderRadius: BorderRadius.circular(20),
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
                _selectedIndex = index;
               
           }),
          items: [
       BottomNavyBarItem(
         icon: const Icon(CupertinoIcons.home),
         title: const Text('Home'),
         activeColor: Colors.black,
         inactiveColor: Colors.white
       ),
           
       BottomNavyBarItem(
           icon: const Icon(CupertinoIcons.wrench),
           title: const Text('Tools'),
           activeColor: Colors.black,
            inactiveColor: Colors.white
       ),
       BottomNavyBarItem(
           icon: const Icon(Icons.settings),
           title: const Text('Settings'),
           activeColor: Colors.black,
            inactiveColor: Colors.white
       ),
          ],
       ),
     ),
     body: pages[_selectedIndex],
      
      );
  }
}