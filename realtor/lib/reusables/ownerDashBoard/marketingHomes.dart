import 'package:flutter/material.dart';
import 'package:realtor/reusables/ownerDashBoard/headerText.dart';

class MarketingHomes extends StatelessWidget {
  const MarketingHomes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: OwnerHeader(
              text: "Marketing Your Home",
            ),
          ),
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: "Get better results for lower fees when you",
              style: TextStyle(
                  //fontSize: 18.0,
                  ),
            ),
            TextSpan(
                text: "\nsell with a local Realtor Agent",
                style: TextStyle(
                  color: Colors.blue,
                  //fontSize: 18.0,
                ))
          ]),
        ),
        Wrap(
          children: [
            AdBarner(
              text: "Pro Photos",
              image: "images/proPhotos.jpeg",
            ),
            AdBarner(
              text: "Yard Sign",
              image: "images/yardSign.jpeg",
            ),
            AdBarner(
              text: "Listing Flyer",
              image: "images/listingFlyer.jpeg",
            ),
            AdBarner(
              text: "MLS Listing",
              image: "images/mlsListing.jpeg",
            ),
          ],
        ),
      ],
    );
  }
}

class AdBarner extends StatelessWidget {
  final String? text;
  final String? image;
  AdBarner({
    this.text,
    this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                text!,
                style: TextStyle(
                    //fontSize: 18.0,
                    ),
              ),
            ),
            Container(
              decoration: BoxDecoration(),
              height: 100.0,
              width: MediaQuery.of(context).size.width * 0.41,
              //color: Colors.amber,
              child: Image.asset(image!, fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
