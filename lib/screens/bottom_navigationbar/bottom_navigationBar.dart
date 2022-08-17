// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsapp/screens/bookmark/bookmark.dart';
import 'package:newsapp/screens/homescreen/homescreen.dart';
import 'package:newsapp/screens/notification/notification.dart';
import 'package:newsapp/screens/profile/profile.dart';

class BottomNavigation extends StatefulWidget {
  int currentindex;
  BottomNavigation({
    Key? key,
    required this.currentindex,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late final Screen = [
    HomeScreen(),
    BookmarkScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[widget.currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.currentindex,
        selectedItemColor: Colors.blue,
        onTap: (Index) {
          setState(() {
            widget.currentindex = Index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [SvgPicture.asset('assets/svg/home.svg')],
            ),
            label: 'Home',
            activeIcon: Column(
              children: [
                SvgPicture.asset(
                  'assets/svg/home.svg',
                  color: Colors.blue,
                )
              ],
            ),
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/bookmark.svg'),
              label: 'bookmark',
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    'assets/svg/bookmark.svg',
                    color: Colors.blue,
                  ),
                ],
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/notification.svg'),
              label: 'notification',
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    'assets/svg/notification.svg',
                    color: Colors.blue,
                  ),
                ],
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/profile.svg'),
              label: 'Profile',
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    'assets/svg/profile.svg',
                    color: Colors.blue,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
