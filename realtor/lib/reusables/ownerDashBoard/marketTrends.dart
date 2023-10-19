import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:realtor/reusables/ownerDashBoard/dropdownButton.dart';
import 'package:realtor/reusables/ownerDashBoard/headerText.dart';

class MarketTrends extends StatelessWidget {
  static const List trendItems = ["Avg Sale Price", "Avg Sale Price"];
  const MarketTrends({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OwnerHeader(
          text: "Market Trends for 152301",
        ),
        Text(
          "How single-family homes have sold per year",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Row(
            children: [
              Text(
                "\$ 278,450",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "+4%",
                style: TextStyle(color: Colors.green),
              ),
              Text("last 12 months"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: DropDown()),
        ),
        //DropdownButton2(items: trendItems.map().toList()),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 350.0,
          color: Colors.blue,
        ),
      ],
    );
  }
}
