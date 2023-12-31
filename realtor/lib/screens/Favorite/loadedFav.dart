import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/controllers/propertyController.dart';
import 'package:realtor/reusables/details/favs/filter.dart';
import 'package:realtor/reusables/details/favs/sort.dart';
import 'package:realtor/reusables/filterbutton.dart';
import 'package:realtor/reusables/lowerCardSection.dart';
import 'package:realtor/reusables/propertyCard.dart';
import 'package:realtor/screens/myShortList.dart';

class LoadedFav extends StatelessWidget {
  LoadedFav({super.key});
  PropertyController propertyController = Get.find();

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
                  fontSize: 20.0,
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(MyShortlist());
                },
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
              fontSize: 20.0,
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
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return SimpleDialog(
                                title: Text("Sort By"),
                                elevation: 4,
                                children: [
                                  Container(
                                    height: 250.0,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    //color: Colors.black,
                                    child: FavSort(),
                                  ),
                                ],
                              );
                            });
                      },
                    ),
                    FilterButton(
                      text: "Filters",
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return SimpleDialog(
                                title: Text("Filter By"),
                                elevation: 4,
                                children: [
                                  Container(
                                    height: 120.0,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    //color: Colors.black,
                                    child: FavFilter(),
                                  ),
                                ],
                              );
                            });
                      },
                    ),
                  ],
                ),
              ),
              Text("${propertyController.favorites.length} Results"),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            //physics: NeverScrollableScrollPhysics(),
            itemCount: propertyController.favorites.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: PropertyCard(
                  bottom: ListedBy(
                    name: propertyController.favorites[index].listedBy,
                  ),
                  fav: propertyController.favorites[index].fav,
                  status: propertyController.favorites[index].status,
                  price: propertyController.favorites[index].price,
                  beds: propertyController.favorites[index].beds,
                  baths: propertyController.favorites[index].baths,
                  sqft: propertyController.favorites[index].sqft,
                  street: propertyController.favorites[index].street,
                  city: propertyController.favorites[index].city,
                  state: propertyController.favorites[index].state,
                  listedBy: propertyController.favorites[index].listedBy,
                  id: propertyController.favorites[index].id,
                  images: propertyController.favorites[index].images!,
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 5.0,
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
          size: 40,
        ),
      ),
    );
  }
}
