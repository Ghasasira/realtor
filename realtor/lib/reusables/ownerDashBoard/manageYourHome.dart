import 'package:flutter/material.dart';
import 'package:realtor/reusables/lowerCardSection.dart';
import 'package:realtor/reusables/ownerDashBoard/headerText.dart';
import 'package:realtor/reusables/propertyCard.dart';
import 'package:realtor/screens/ownerDashboard.dart';

class ManageYourHome extends StatelessWidget {
  const ManageYourHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
              child: OwnerHeader(
                text: "Manage Your Home",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
            child: Text(
              "2 Homes",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
              height: 400 * 2,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return PropertyCard(
                      fav: true,
                      images: [],
                      bottom: ListedBy(),
                      //page: OwnerDashboard(),
                    );
                  })),
        ],
      ),
    );
  }
}
