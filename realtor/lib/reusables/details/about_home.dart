import 'package:flutter/material.dart';
import 'package:realtor/reusables/details/hearder.dart';

class AboutHome extends StatelessWidget {
  const AboutHome({super.key});

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
            "For Sale",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        Text("Listed By ...."),
        Text("Realtor Last checked: ...."),
        Text("last updated ...."),
        Text("Source: ....."),
      ],
    );
  }
}
