import 'package:flutter/material.dart';
import 'package:realtor/controllers/propertyController.dart';
import 'package:realtor/reusables/details/detailRow.dart';
import 'package:realtor/reusables/details/hearder.dart';

class PublicFacts extends StatelessWidget {
  final PropertyController controller;
  const PublicFacts({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailHeader(
          text: "Public Facts",
        ),
        DetailsRow(
          label: "Beds",
          value: controller.singleHouse[0].beds.toString(),
        ),
        DetailsRow(
          label: "Baths",
          value: controller.singleHouse[0].baths.toString(),
        ),
        DetailsRow(
          label: "Sq.ft.",
          value: controller.singleHouse[0].sqft.toString(),
        ),
        DetailsRow(
          label: "Floors",
          value: "-",
        ),
        DetailsRow(
          label: "Lot Size",
          value: controller.singleHouse[0].lot.toString(),
        ),
        DetailsRow(
          label: "Style",
          value: controller.singleHouse[0].style,
        ),
        DetailsRow(
          label: "Year Built",
          value: controller.singleHouse[0].built,
        ),
        DetailsRow(
          label: "Year Renovated",
          value: "-",
        ),
        // DetailsRow(
        //   label: "City",
        //   value: controller.singleHouse[0].city,
        // ),
        DetailsRow(
          label: "APN",
          value: "-",
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: TextButton(
            onPressed: () {},
            child: Text('Edit Home Facts'),
          ),
        )
      ],
    );
  }
}
