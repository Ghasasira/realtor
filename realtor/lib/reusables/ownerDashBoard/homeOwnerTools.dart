import 'package:flutter/material.dart';
import 'package:realtor/controllers/propertyController.dart';
import 'package:realtor/reusables/ownerDashBoard/headerText.dart';

class OwnerTools extends StatelessWidget {
  const OwnerTools({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OwnerHeader(
          text: "Home Owner tools",
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "Manage how your home looks on Realtor or create a personal Owner Estimate, allowing you to select your own comparable homes.",
        ),
        SizedBox(
          height: 10.0,
        ),
        ToolButton(icon: Icons.edit, text: "Edit home facts"),
        ToolButton(icon: Icons.image, text: "Manage photos"),
        ToolButton(
            icon: Icons.auto_graph_rounded, text: "Create Owner Estimate"),
      ],
    );
  }
}

class ToolButton extends StatelessWidget {
  final IconData? icon;
  final String? text;

  const ToolButton({
    this.icon,
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10.0)),
        width: MediaQuery.of(context).size.width,
        child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.black,
              ),
              Text(
                text!,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
