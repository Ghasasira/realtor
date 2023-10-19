import 'package:flutter/material.dart';
import 'package:realtor/screens/Favorite/favorite.dart';
import 'package:realtor/screens/feed/feed.dart';
import 'package:realtor/screens/findHomes.dart';
import 'package:realtor/screens/myHomes/myhome.dart';
import 'package:realtor/screens/myRealtor/myRealtor.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final pages = [
    const FindHomes(),
    const Feed(),
    const Favorite(),
    const Myhome(),
    const MyRealtor()
  ];

  void _selectItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'FindHomes',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.featured_play_list_outlined,
            ),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house_outlined,
            ),
            label: 'My Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_sharp,
            ),
            label: 'My Realtor',
          ),
        ],
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _selectItem,
        elevation: 5.0,
        unselectedItemColor: Colors.black45,
        //enableFeedback: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
