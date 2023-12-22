import 'package:flutter/material.dart';
import 'package:third_project/profile.dart';
import 'package:third_project/your_videos.dart';

import 'dash-Board.dart';
import 'notifications.dart';

class ButtomNav extends StatefulWidget {
  const ButtomNav({super.key});

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  int _currentIndex = 0;
  final List<Widget> _pages = <Widget>[
    const DashBoard(),
    const YourVideos(),
    Notifications(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: NavigationBar(
        indicatorColor: const Color(0xFFFF4D67),
        backgroundColor: Color(0xFFFF4D67),
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.home,
                color: Color(0xFFFFFFFF),
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(
                Icons.video_collection_sharp,
                color: Color(0xFFFFFFFF),
              ),
              label: 'Your videos'),
          NavigationDestination(
              icon: Icon(
                Icons.notifications_rounded,
                color: Color(0xFFFFFFFF),
              ),
              label: 'Notifications'),
          NavigationDestination(
              icon: Icon(
                Icons.person,
                color: Color(0xFFFFFFFF),
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
