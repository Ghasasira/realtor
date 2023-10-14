import 'package:flutter/material.dart';
import 'package:realtor/reusables/details/detailRow.dart';
import 'package:realtor/reusables/details/hearder.dart';

class PublicFacts extends StatelessWidget {
  const PublicFacts({super.key});

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
          value: "3.0",
        ),
        DetailsRow(
          label: "Baths",
          value: "2.0",
        ),
        DetailsRow(
          label: "Sq.ft.",
          value: "-",
        ),
        DetailsRow(
          label: "Floors",
          value: "-",
        ),
        DetailsRow(
          label: "Lot Size",
          value: "-",
        ),
        DetailsRow(
          label: "Style",
          value: "-",
        ),
        DetailsRow(
          label: "Year Built",
          value: "-",
        ),
        DetailsRow(
          label: "Year Renovated",
          value: "-",
        ),
        DetailsRow(
          label: "City",
          value: "K'la",
        ),
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
