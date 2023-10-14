import 'package:flutter/material.dart';
import 'package:realtor/reusables/details/detailRow.dart';
import 'package:realtor/reusables/details/hearder.dart';

class KeyDetails extends StatelessWidget {
  const KeyDetails({super.key});

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
                label: "List Price",
                value: "-",
              ),
              DetailsRow(
                label: "Redfin Estimate",
                value: "-",
              ),
              DetailsRow(
                label: "Price/Sq.Ft.",
                value: "-/Sq.Ft.",
              ),
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
                value: "-",
              ),
              DetailsRow(
                label: "City",
                value: "K'la",
              ),
              DetailsRow(
                label: "State",
                value: "Central",
              ),
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
