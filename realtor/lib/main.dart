import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/controllers/propertyController.dart';
import 'package:realtor/home.dart';
import 'package:realtor/screens/Favorite/favorite.dart';
import 'package:realtor/screens/authScreens/login.dart';
import 'package:realtor/screens/authScreens/signup.dart';
import 'package:realtor/screens/feed/feed.dart';
import 'package:realtor/screens/findHomes.dart';
import 'package:realtor/screens/myHomes/myhome.dart';
import 'package:realtor/screens/myRealtor/myRealtor.dart';
import 'package:realtor/screens/ownerDashboard.dart';
import 'package:realtor/screens/propertyDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //final PropertyController propertyController = PropertyController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final PropertyController propertyController = PropertyController();
    Get.put(propertyController);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //theme:,
      theme: ThemeData(
          fontFamily: "Montserrat",
          textTheme: TextTheme(
            bodySmall: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            bodyMedium: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            bodyLarge: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          )),
      home: const
          //SignUp()
          //LoginScreen(),
          Home(),
    );
  }
}
