import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/controllers/propertyController.dart';
import 'package:realtor/reusables/lowerCardSection.dart';
import 'package:realtor/reusables/propertyCard.dart';
import 'package:realtor/screens/ownerDashboard.dart';

class LoadedMyHome extends StatelessWidget {
  LoadedMyHome({super.key});
  PropertyController propertyController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(
              10.0,
            ),
            child: Text(
              "${propertyController.myProperty.length} Homes",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            height: (MediaQuery.of(context).size.height - 200),
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: PropertyCard(
                    page: "ownerDashboard",
                    bottom: ListedBy(
                      name: propertyController.myProperty[index].listedBy,
                    ),
                    status: propertyController.myProperty[index].status,
                    price: propertyController.myProperty[index].price,
                    beds: propertyController.myProperty[index].beds,
                    baths: propertyController.myProperty[index].baths,
                    sqft: propertyController.myProperty[index].sqft,
                    street: propertyController.myProperty[index].street,
                    city: propertyController.myProperty[index].city,
                    state: propertyController.myProperty[index].state,
                    listedBy: propertyController.myProperty[index].listedBy,
                    id: propertyController.myProperty[index].id,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
