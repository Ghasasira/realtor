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
                fontSize: 18.0,
              ),
            ),
            TextSpan(
                text: "\n sell with a local Realtor Agent",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                ))
          ]),
        ),
        Wrap(
          children: [
            AdBarner(
              text: "Pro Photos",
            ),
            AdBarner(
              text: "Yard Sign",
            ),
            AdBarner(
              text: "Listing Flyer",
            ),
            AdBarner(
              text: "MLS Listing",
            ),
          ],
        ),
      ],
    );
  }
}

class AdBarner extends StatelessWidget {
  final String? text;
  AdBarner({
    this.text,
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
            Text(
              text!,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Container(
              height: 100.0,
              width: MediaQuery.of(context).size.width * 0.41,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
