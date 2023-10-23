import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final IconData? icon;
  final String? label;
  MenuTile({
    this.icon,
    this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.black),
          ),
        ),
        child: ListTile(
          leading: Icon(
            icon,
            size: 24.0,
          ),
          title: Text(
            label!,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
