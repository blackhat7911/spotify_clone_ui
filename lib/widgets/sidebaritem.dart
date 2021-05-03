import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {

  final String title;
  final IconData icon;
  final Function onTap;

  const SideBarItem({
    Key key, 
    @required this.title, 
    @required this.icon, 
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white
        )
      ),
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      onTap: onTap,
    );
  }
}