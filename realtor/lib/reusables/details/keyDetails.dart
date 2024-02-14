import 'package:flutter/material.dart';
import 'package:realtor/controllers/propertyController.dart';
import 'package:realtor/reusables/details/detailRow.dart';
import 'package:realtor/reusables/details/hearder.dart';

class KeyDetails extends StatelessWidget {
  final PropertyController controller;
  const KeyDetails({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailHeader(
          text: "Key Details",
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Price",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              DetailsRow(
                label: "Price",
                value: "\$ ${controller.singleHouse[0].price.toString()}",
              ),
              DetailsRow(
                label: "Redfin Estimate",
                value: "-",
              ),
              DetailsRow(
                  label: "Price/Sq.Ft.",
                  value:
                      "\$ ${(controller.singleHouse[0].price / controller.singleHouse[0].sqft).toStringAsFixed(2)} per Sq.Ft."),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Home Facts",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              DetailsRow(
                label: "Property Type",
                value: "-",
              ),
              DetailsRow(
                label: "Style",
                value: controller.singleHouse[0].style,
              ),
              DetailsRow(
                label: "Street",
                value: controller.singleHouse[0].street,
              ),
              // DetailsRow(
              //   label: "State",
              //   value: controller.singleHouse[0].state,
              // ),
              DetailsRow(
                label: "MLS#",
                value: "0234789",
              ),
              DetailsRow(
                label: "Buyer's Agent Commision",
                value: "2.5%",
              ),
            ]),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Show Full Details"),
        ),
      ],
    );
  }
}
