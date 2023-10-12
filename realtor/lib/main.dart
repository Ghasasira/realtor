import 'package:flutter/material.dart';
import 'package:realtor/screens/Favorite/favorite.dart';
import 'package:realtor/screens/feed/feed.dart';
import 'package:realtor/screens/findHomes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Favorite(),
    );
  }
}
