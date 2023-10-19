import 'package:flutter/material.dart';
import 'package:realtor/reusables/lowerCardSection.dart';
import 'package:realtor/reusables/propertyCard.dart';
import 'package:realtor/screens/ownerDashboard.dart';

class LoadedMyHome extends StatelessWidget {
  const LoadedMyHome({super.key});

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
              "3 Homes",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
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
                    page: OwnerDashboard(),
                    bottom: ListedBy(),
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
