import 'package:flutter/material.dart';
import 'package:spotify_clone/models/sidebar_data.dart';

class SideBarLists extends StatefulWidget {
  @override
  _SideBarListsState createState() => _SideBarListsState();
}

class _SideBarListsState extends State<SideBarLists> {

  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        isAlwaysShown: true,
        controller: _scrollController,
        child: ListView(
          controller: _scrollController,
          physics: ClampingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0
                  ),
                  child: Text(
                    "YOUR LIBRARY",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                ...yourLibrary.map((data) => 
                  ListTile(
                    dense: true,
                    title: Text(
                      data,
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ).toList()
              ],
            ),
            SizedBox(height: 16.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0
                  ),
                  child: Text(
                    "YOUR PLAYLISTS",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                ...yourPlaylists.map((data) => 
                  ListTile(
                    dense: true,
                    title: Text(
                      data,
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ).toList()
              ],
            ),
          ],
        ),
      ),
    );
  }
}