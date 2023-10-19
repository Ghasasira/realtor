import 'package:flutter/material.dart';
import 'package:realtor/reusables/realtorButton.dart';

class FavSort extends StatefulWidget {
  FavSort({super.key});

  @override
  State<FavSort> createState() => _FavSortState();
}

class _FavSortState extends State<FavSort> {
  List orderItems = [
    "Ascending",
    "Descending",
  ];

  void _onSelected() {}

  String selectedOrder = "Ascending";

  List sortItems = [
    "Date Favorited",
    "Price",
    "Beds",
    "Baths",
    "Square Footage"
  ];

  String sortitem = "Date Favorited";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sort By"),
            DropdownButton(
              value: sortitem,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 20,
              elevation: 5,
              style: TextStyle(color: Colors.black),
              onChanged: (newValue) {
                setState(() {
                  sortitem = newValue.toString();
                });
              },
              items: sortItems.map((item) {
                return DropdownMenuItem(
                  child: Text(item),
                  value: item,
                );
              }).toList(),
            ),
            Column(
              children: orderItems.map((item) {
                return RadioListTile(
                    value: item,
                    title: Text(item),
                    groupValue: selectedOrder,
                    onChanged: (item) {
                      setState(() {
                        selectedOrder = item;
                      });
                      ;
                    });
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
                    text: "Sort By"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
