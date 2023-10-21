import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/reusables/universalPages/feedSetting.dart';
import 'package:realtor/screens/feed/feedEmpty.dart';
import 'package:realtor/screens/feed/feedLoaded.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              "Feed",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(FeedSettings());
              },
              icon: const Icon(
                Icons.settings,
                size: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: const FeedLoaded(),
        ),
      ),
    );
  }
}
