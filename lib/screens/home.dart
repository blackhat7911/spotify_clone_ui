import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/sidebar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 200.0,
                  height: size.height * 0.90,
                  decoration: BoxDecoration(
                    color: Color(0xff191414),
                  ),
                  child: SideBar(),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.10,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}