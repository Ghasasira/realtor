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
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              child: ListView.builder(
                itemCount: propertyController.filteredFeedProperty.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: PropertyCard(
                        bottom: const Recommended(),
                        fav: propertyController.filteredFeedProperty[index].fav,
                        status: propertyController
                            .filteredFeedProperty[index].status,
                        price: propertyController
                            .filteredFeedProperty[index].price,
                        beds:
                            propertyController.filteredFeedProperty[index].beds,
                        baths: propertyController
                            .filteredFeedProperty[index].baths,
                        sqft:
                            propertyController.filteredFeedProperty[index].sqft,
                        street: propertyController
                            .filteredFeedProperty[index].street,
                        city:
                            propertyController.filteredFeedProperty[index].city,
                        state: propertyController
                            .filteredFeedProperty[index].state,
                        listedBy: propertyController
                            .filteredFeedProperty[index].listedBy,
                        id: propertyController.filteredFeedProperty[index].id,
                        images: propertyController
                            .filteredFeedProperty[index].images!),
                  );
                },
              ),
            ),
            // SizedBox(
            //   height: 400.0,
            // ),
          ],
        ),
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
    PropertyController propertyController = Get.find();
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
                selected == "All"
                    ? propertyController.filterAll()
                    : selected == "Favorites"
                        ? propertyController.filterFavs()
                        : propertyController.filterStatus(selected);
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
