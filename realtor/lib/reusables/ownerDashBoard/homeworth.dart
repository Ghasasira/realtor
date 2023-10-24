import 'package:flutter/material.dart';
import 'package:realtor/reusables/ownerDashBoard/headerText.dart';
import 'package:realtor/reusables/realtorButton.dart';

class HomeWorth extends StatelessWidget {
  const HomeWorth({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            OwnerHeader(
              text: "What is my home worth?",
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Get a Realtor Sales Advisor's opinion on your home's value and learn more about your towns market.",
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: RealtorButton(
                color: Colors.red,
                text: "Request a free analysis",
                onpressed: () {},
                styles: TextStyle(
                  color: Colors.white,
                  //fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
