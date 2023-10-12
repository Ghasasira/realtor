import 'package:flutter/material.dart';

class RealtorButton extends StatelessWidget {
  final Color? color;
  final String? text;
  final TextStyle? styles;
  final VoidCallback? onpressed;
  RealtorButton(
      {super.key, this.color, this.text, this.onpressed, this.styles});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color),
      onPressed: onpressed,
      child: Text(
        text!,
        style: styles!,
      ),
    );
  }
}
