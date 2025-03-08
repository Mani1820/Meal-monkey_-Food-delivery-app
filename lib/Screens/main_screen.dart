import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/Home/home_screen.dart';
import 'package:meal_monkey/Screens/Menu/menu_screen.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/tab_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedPage = 2;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget bucketChild = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: bucketChild,
      ),
      drawerEnableOpenDragGesture: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: selectedPage == 2
            ? ColorExtension.primaryBg
            : ColorExtension.placeholder,
        onPressed: () {
          if (selectedPage != 2) {
            setState(() {
              selectedPage = 2;
            });
          }
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const MainScreen(),
            ),
          );
        },
        shape: CircleBorder(),
        child: Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          child: Icon(
            Icons.home,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Color(0xffF4F4F4),
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 15,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabScreenButton(
              icon: Icons.menu,
              title: 'Menu',
              selectedPage: selectedPage == 0,
              onTap: () {
                setState(() {
                  selectedPage = 0;
                  bucketChild = const MenuScreen();
                });
              },
            ),
            TabScreenButton(
              icon: Icons.shopping_bag,
              title: 'offers',
              selectedPage: selectedPage == 1,
              onTap: () {
                setState(() {
                  selectedPage = 1;
                  bucketChild = HomeScreen();
                });
              },
            ),
            SizedBox(
              width: 40,
            ),
            TabScreenButton(
              icon: Icons.person,
              title: 'Profile',
              selectedPage: selectedPage == 3,
              onTap: () {
                setState(() {
                  selectedPage = 3;
                  bucketChild = HomeScreen();
                });
              },
            ),
            TabScreenButton(
              icon: Icons.menu,
              title: 'More',
              selectedPage: selectedPage == 4,
              onTap: () {
                setState(() {
                  selectedPage = 4;
                  bucketChild = HomeScreen();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
