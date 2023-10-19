import 'package:flutter/material.dart';
import 'package:realtor/reusables/realtorButton.dart';

class FavFilter extends StatefulWidget {
  FavFilter({super.key});

  @override
  State<FavFilter> createState() => _FavFilterState();
}

class _FavFilterState extends State<FavFilter> {
  @override
  List filterItems = [
    "All Homes",
    "Active Homes",
    "Homes for Sale",
    "Homes for Rent",
    "Sold Homes"
  ];

  String filteritem = "All Homes";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton(
              value: filteritem,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 20,
              elevation: 5,
              style: TextStyle(color: Colors.black),
              onChanged: (newValue) {
                setState(() {
                  filteritem = newValue.toString();
                });
              },
              items: filterItems.map((item) {
                return DropdownMenuItem(
                  child: Text(item),
                  value: item,
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),
                SizedBox(width: 10.0),
                RealtorButton(
                    color: Color.fromARGB(255, 88, 74, 74),
                    onpressed: () {},
                    styles: TextStyle(color: Colors.white),
                    text: "Filter By"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
