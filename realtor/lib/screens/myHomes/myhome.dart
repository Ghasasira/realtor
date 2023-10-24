import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/controllers/propertyController.dart';
import 'package:realtor/reusables/universalPages/addHome.dart';
import 'package:realtor/screens/myHomes/emptyMyHome.dart';
import 'package:realtor/screens/myHomes/loadedMyHome.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  bool addingHome = false;
  @override
  Widget build(BuildContext context) {
    PropertyController propertyController = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Home',
          style: TextStyle(
            color: Colors.black,
            //fontSize: 28,
          ),
        ),
        actions: [
          addingHome
              ? Text("")
              : TextButton(
                  onPressed: () {
                    setState(() {
                      addingHome = true;
                    });
                  },
                  child: Text(
                    'ADD HOME',
                    style: TextStyle(color: Colors.black),
                  ),
                )
        ],
      ),
      body: addingHome
          ? AddHome()
          : (propertyController.myProperty.isEmpty
              ? EmptyMyHome()
              : LoadedMyHome()),

      //addingHome ? AddHome() : EmptyMyHome(),
      //addingHome ? AddHome() : LoadedMyHome(),propertyController.myProperty.isEmpty
    );
  }
}
