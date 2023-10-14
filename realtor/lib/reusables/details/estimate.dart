import 'package:flutter/material.dart';
import 'package:realtor/reusables/details/hearder.dart';

class Estimate extends StatelessWidget {
  const Estimate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailHeader(
          text: "Realtor Estimate",
        ),
        Text(
          "We don't have enough data to make an accurate estimate at this time",
        ),
        TextButton(
          onPressed: () {},
          child: Text('Learn more'),
        )
      ],
    );
  }
}
