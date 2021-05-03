import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/sidebar_lists.dart';
import 'package:spotify_clone/widgets/sidebaritem.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10.0,),
        SideBarItem(
          title: "Home",
          icon: Icons.home,
        ),
        SideBarItem(
          title: "Browse",
          icon: Icons.open_in_browser,
        ),
        SideBarItem(
          title: "Radio",
          icon: Icons.radio,
        ),
        const SizedBox(height: 10.0,),
        SideBarLists()
      ],
    );
  }
}
