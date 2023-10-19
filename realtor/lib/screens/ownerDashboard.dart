import 'package:flutter/material.dart';
import 'package:realtor/reusables/ownerDashBoard/headerText.dart';
import 'package:realtor/reusables/ownerDashBoard/homeOwnerTools.dart';
import 'package:realtor/reusables/ownerDashBoard/homeworth.dart';
import 'package:realtor/reusables/ownerDashBoard/manageYourHome.dart';
import 'package:realtor/reusables/ownerDashBoard/marketTrends.dart';
import 'package:realtor/reusables/ownerDashBoard/marketingHomes.dart';
import 'package:realtor/reusables/ownerDashBoard/realtorEstimate.dart';
import 'package:realtor/reusables/ownerDashBoard/recentlyListed.dart';
import 'package:realtor/reusables/ownerDashBoard/recentlySold.dart';
import 'package:realtor/reusables/ownerDashBoard/topArea.dart';
import 'package:realtor/reusables/realtorButton.dart';

class OwnerDashboard extends StatelessWidget {
  const OwnerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Owner Dashboard",
          style: TextStyle(
            fontSize: 28,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text(
              "Welcome Back, Ghus!",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            //
            TopArea(),
            DashDiv(),
            OwnerHeader(
              text:
                  "Sell your home for more, pay a 1% listing fee when you sell and buy",
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: RealtorButton(
                text: "Schedule Selling Consultation",
                color: Colors.red,
                onpressed: () {},
                styles: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
            //DashDiv(),
            Text("Or, talk to a Realtor Agent about your home's value."),
            SizedBox(
              height: 10.0,
            ),
            GestureDetector(
                onTap: () {},
                child: Text(
                  "Request a free analysis",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )),
            DashDiv(),
            RealtorEstimate(),
            HomeWorth(),
            OwnerTools(),
            DashDiv(),
            MarketTrends(),
            DashDiv(),
            MarketingHomes(),
            DashDiv(),
            RecentlyListed(),
            RecentlySold(),
            ManageYourHome(),

            //
            SizedBox(height: 30),
            Text(
              "Address",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: RealtorButton(
                text: "Claim Another Home",
                color: Color.fromARGB(255, 218, 214, 214),
                onpressed: () {},
                styles: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DashDiv extends StatelessWidget {
  const DashDiv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Divider(
        color: Colors.black,
        thickness: 2.0,
      ),
    );
  }
}
