import 'package:flutter/material.dart';
import 'package:islamiapp/core/theme/appColors.dart';
import 'package:islamiapp/features/layout/pages/hadith_tab.dart';
import 'package:islamiapp/features/layout/pages/quran_tab.dart';
import 'package:islamiapp/features/layout/pages/radio_tab.dart';
import 'package:islamiapp/features/layout/pages/sbha_tab.dart';
import 'package:islamiapp/features/layout/pages/times_tab.dart';
import 'package:islamiapp/features/layout/widgets/custom_nav_bar_item.dart';
import 'package:islamiapp/core/constants/assets.dart';
class layoutPage extends StatefulWidget {
  const layoutPage({super.key});

  @override
  State<layoutPage> createState() => _layoutPageState();
}

class _layoutPageState extends State<layoutPage> {
  int _selectedIndex = 0;
  List<Widget> tabs=[
    QuranTab(),
    HadithTab(),
    SbhaTab(),
    RadioTab(),
    TimesTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: appColors.primary,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: CustomNavBarItem(selectedIndex: _selectedIndex, navBarItem: 0, iconPath: Assets.iconsQuran),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              icon: CustomNavBarItem(selectedIndex: _selectedIndex, navBarItem: 1, iconPath: Assets.iconsHadith),
              label: "Hadith",
            ),
            BottomNavigationBarItem(
              icon: CustomNavBarItem(selectedIndex: _selectedIndex, navBarItem: 2, iconPath: Assets.iconsSebha),
              label: "Sebha",
            ),
            BottomNavigationBarItem(
              icon: CustomNavBarItem(selectedIndex: _selectedIndex, navBarItem: 3, iconPath: Assets.iconsRadio),
              label: "Radio",
            ),
            BottomNavigationBarItem(
              icon: CustomNavBarItem(selectedIndex: _selectedIndex, navBarItem: 4, iconPath: Assets.iconsTime),
              label: "Time",
            ),
          ]),
      body: tabs[_selectedIndex],
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
