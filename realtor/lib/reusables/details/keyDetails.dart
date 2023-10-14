import 'package:flutter/material.dart';
import 'package:realtor/reusables/details/hearder.dart';

class KeyDetails extends StatelessWidget {
  const KeyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailHeader(
          text: "Key Details",
        ),
        Container(),
      ],
    );
  }
}
