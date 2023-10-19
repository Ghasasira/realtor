import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/home.dart';
import 'package:realtor/screens/Favorite/favorite.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
