import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:realtor/reusables/filterbutton.dart';
import 'package:realtor/reusables/lowerCardSection.dart';
import 'package:realtor/reusables/propertyCard.dart';

class LoadedFav extends StatelessWidget {
  const LoadedFav({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Shortlist",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Expand",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShortlistItem(),
              ShortlistItem(),
              ShortlistItem(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Text(
            "My Favorites",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilterButton(
                      text: "Sort",
                      onPressed: () {},
                    ),
                    FilterButton(
                      text: "Filters",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Text("12 Results"),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: 12,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: PropertyCard(
                  bottom: ListedBy(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ShortlistItem extends StatelessWidget {
  const ShortlistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.black,
      strokeWidth: 2,
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      padding: EdgeInsets.all(0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(),
        child: Icon(
          Icons.house_outlined,
          size: 50,
        ),
      ),
    );
  }
}
