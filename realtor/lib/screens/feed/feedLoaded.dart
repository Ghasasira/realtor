import 'package:flutter/material.dart';
import 'package:realtor/reusables/lowerCardSection.dart';
import 'package:realtor/reusables/propertyCard.dart';

class FeedLoaded extends StatelessWidget {
  const FeedLoaded({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 35.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text('new'),
                    )),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              "Updates",
              //textAlign: TextAlign.left,
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            ),
          ),
          //PropertyCard(),

          // height: MediaQuery.of(context).size.height,
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: PropertyCard(
                    bottom: Recommended(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
