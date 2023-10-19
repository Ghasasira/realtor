import 'package:flutter/material.dart';
import 'package:realtor/reusables/universalPages/addHome.dart';
import 'package:realtor/screens/myHomes/loadedMyHome.dart';

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Home',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'ADD HOME',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      body: AddHome(), //LoadedMyHome(),
    );
  }
}
