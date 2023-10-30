import 'package:flutter/material.dart';
import 'package:realtor/reusables/lowerCardSection.dart';
import 'package:realtor/reusables/ownerDashBoard/headerText.dart';
import 'package:realtor/reusables/propertyCard.dart';

class RecentlySold extends StatelessWidget {
  const RecentlySold({super.key});

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
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
            child: OwnerHeader(
              text: "Recently Sold",
            ),
          ),
          Container(
              height: 400 * 2,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return PropertyCard(
                      fav: false,
                      images: [" "],
                      bottom: ListedBy(),
                    );
                  })),
        ],
      ),
    );
  }
}
