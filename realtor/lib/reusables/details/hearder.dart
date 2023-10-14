import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget {
  final String? text;
  DetailHeader({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Text(
        text!,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 24,
        ),
      ),
    );
  }
}
