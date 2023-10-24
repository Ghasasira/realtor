import 'package:flutter/material.dart';

class OwnerHeader extends StatelessWidget {
  final String? text;
  OwnerHeader({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
