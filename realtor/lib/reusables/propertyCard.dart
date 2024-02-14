import 'package:cached_network_image/cached_network_image.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/controllers/propertyController.dart';
import 'package:realtor/controllers/schools.dart';
import 'package:realtor/reusables/lowerCardSection.dart';
import 'package:realtor/screens/ownerDashboard.dart';
import 'package:realtor/screens/propertyDetails.dart';

class PropertyCard extends StatelessWidget {
  final Widget? bottom;
  final String? page;
  final int? price;
  final int? beds;
  final int? baths;
  final int? sqft;
  final String? street;
  final String? description;
  final List<String>? keywords;
  final String? status;
  final int? id;
  final int? listedBy;
  final List? images;
  final bool? fav;
  PropertyCard({
    super.key,
    this.bottom,
    this.listedBy,
    this.page,
    this.baths,
    this.beds,
    this.price,
    this.sqft,
    this.description,
    this.keywords,
    this.status,
    this.street,
    this.id,
    this.images,
    this.fav,
  });

  PropertyController propertyController = Get.find();
  final SchoolController schoolController = SchoolController();
  //Get.put(SchoolController);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        int idNo = id!;
        schoolController.getNearbySchools(0.1223, -37.233, 5000);
        //propertyController.fetchSingleItem(idNo);
        if (page == "ownerDashboard") {
          propertyController.fetchSingleMyHomeItem(idNo);
          Get.to(OwnerDashboard(id: idNo));
        } else {
          propertyController.fetchSingleItem(idNo);
          Get.to(PropertyDetails(id: idNo));
        }
      },
      child: Card(
        elevation: 5.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 250.0,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "images/background.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      CachedNetworkImage(
                        imageUrl: //images![0] ??
                            "https://www.livehome3d.com/assets/img/social/how-to-design-a-house.jpg",
                        imageBuilder: (context, imageProvider) => Container(
                          height: 250.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      // Image.network(
                      //   images[0],
                      //   fit: BoxFit.fill,
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 8.0),
                  child: Container(
                    height: 25.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.red),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        " For $status ", // "For Sale",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text.rich(
                            //textAlign: TextAlign.left,
                            TextSpan(
                              text: "\$ $price",
                              style: TextStyle(
                                  fontSize: 19.0, fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " Sale price",
                                  style: TextStyle(
                                      fontSize: 10.0, color: Colors.blueGrey),
                                )
                              ],
                            ),
                          ),
                        ),
                        Wrap(
                          children: [
                            Text("$beds Beds $baths baths, $sqft Sq.Ft.")
                          ],
                        ),
                        Wrap(
                          children: [
                            Text(
                              "$street",
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //FavoriteButton(valueChanged: valueChanged)
                      FavoriteButton(
                        isFavorite: fav,
                        iconSize: 40.0,
                        // iconDisabledColor: Colors.white,
                        valueChanged: (_) {
                          int propId = id!;
                          //propertyController.addToFav(propId);
                          print(fav);
                        },
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share_outlined),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Wrap(
                children: [
                  Text(
                    description!,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            bottom!
          ],
        ),
      ),
    );
  }
}
