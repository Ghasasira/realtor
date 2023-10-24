import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/controllers/propertyController.dart';
import 'package:realtor/reusables/lowerCardSection.dart';
import 'package:realtor/reusables/propertyCard.dart';

class FeedLoaded extends StatelessWidget {
  const FeedLoaded({super.key});

  // PropertyController propertyController = Get.find();
  @override
  Widget build(BuildContext context) {
    PropertyController propertyController = Get.find();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopSortBar(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              "Updates",
              //textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          //PropertyCard(),

          // height: MediaQuery.of(context).size.height,
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: propertyController.allProperty.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: PropertyCard(
                    bottom: const Recommended(),
                    status: propertyController.allProperty[index].status,
                    price: propertyController.allProperty[index].price,
                    beds: propertyController.allProperty[index].beds,
                    baths: propertyController.allProperty[index].baths,
                    sqft: propertyController.allProperty[index].sqft,
                    street: propertyController.allProperty[index].street,
                    city: propertyController.allProperty[index].city,
                    state: propertyController.allProperty[index].state,
                    listedBy: propertyController.allProperty[index].listedBy,
                    id: propertyController.allProperty[index].id,
                  ),
                );
              },
            ),
          ),
          Container(
            height: 300.0,
          ),
        ],
      ),
    );
  }
}

class TopSortBar extends StatefulWidget {
  const TopSortBar({
    super.key,
  });

  @override
  State<TopSortBar> createState() => _TopSortBarState();
}

class _TopSortBarState extends State<TopSortBar> {
  List SortTags = [
    "All",
    "New",
    "Favorites",
    "Price Change",
    "Open House",
    "Insights",
    "Sold",
    "Status Change",
  ];

  String selected = "All";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: SortTags.map((tag) {
          bool isSelected = (tag == selected);
          return GestureDetector(
            onTap: () {
              setState(() {
                selected = tag;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 35.0,
                constraints: BoxConstraints(
                  minWidth: 70.0,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.amber : null,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(tag),
                )),
              ),
            ),
          );
        }).toList(),
      ),
      //  ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //   itemCount: 7,
      //   itemBuilder: (context, index) {
      // return Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Container(
      //     height: 35.0,
      //     decoration: BoxDecoration(
      //       border: Border.all(
      //         color: Colors.black,
      //       ),
      //       borderRadius: BorderRadius.circular(10.0),
      //     ),
      //     child: Center(
      //         child: Padding(
      //       padding: EdgeInsets.only(left: 10.0, right: 10.0),
      //       child: Text('new'),
      //     )),
      //   ),
      // );
      //   },
      // ),
    );
  }
}
