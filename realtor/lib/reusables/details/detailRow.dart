import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  final String? label;
  final String? value;
  DetailsRow({
    this.label,
    this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label!),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: Text(value!),
          ),
        ],
      ),
    );
  }
}
