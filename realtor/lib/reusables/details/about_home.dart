import 'package:flutter/material.dart';
import 'package:realtor/controllers/propertyController.dart';
import 'package:realtor/reusables/details/hearder.dart';

class AboutHome extends StatelessWidget {
  final PropertyController controller;
  const AboutHome({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailHeader(
          text: "About This Home",
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Text(
            controller.singleHouse[0].status,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        Text("Listed By: ${controller.singleHouse[0].listedBy}"),
        Text("Realtor Last checked: ...."),
        Text("last updated: ...."),
        Row(
          children: [
            Text("Source:"),
            TextButton(
              onPressed: () {},
              child: Text("National Housing"),
            ),
          ],
        ),
      ],
    );
  }
}
