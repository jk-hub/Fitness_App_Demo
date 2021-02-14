import 'package:Fitness_app_demo/screens/blank_screen.dart';
import 'package:Fitness_app_demo/screens/dashboard.dart';
import 'package:Fitness_app_demo/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;
  List listOfScreens = [];
  PageController pageController = PageController();

  void _onItemTapped(int page) {
    setState(() {
      _selectedIndex = page;
    });
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        controller: pageController,
        children: [
          BlankScreen(
            title: _selectedIndex.toString(),
          ),
          BlankScreen(
            title: _selectedIndex.toString(),
          ),
          DashboardScreen(),
          BlankScreen(
            title: _selectedIndex.toString(),
          ),
          BlankScreen(
            title: _selectedIndex.toString(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 4,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: AppColors.redColor),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum_sharp),
            label: 'Forums',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.bullhornOutline),
            label: 'Content',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Trainer',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.dotsHorizontalCircleOutline),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
