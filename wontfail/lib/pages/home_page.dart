import 'package:flutter/material.dart';
import 'package:wontfail/themes.dart';
import 'package:wontfail/widgets/home_widget.dart';
import 'package:wontfail/widgets/progress_widget.dart';
import 'package:wontfail/widgets/settings_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    HomeWidget(),
    ProgressWidget(),
    SettingsWidget()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print('Now in index = $_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: edge),
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon/icon_bottombar.png',
                height: 32,
              ),
              label: 'Journal'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon/icon_bottombar.png',
                height: 32,
              ),
              label: 'Progress'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon/icon_bottombar.png',
                height: 32,
              ),
              label: 'Settings'),
        ],
      ),
    );
  }
}
