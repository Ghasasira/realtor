import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/controllers/propertyController.dart';
//import 'package:realtor/reusables/ownerDashBoard/headerText.dart';
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
  final int id;
  OwnerDashboard({super.key, required this.id});
  PropertyController propertyController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Owner Dashboard",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const Text(
              "Welcome Back, Ghus!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            //
            TopArea(
              controller: propertyController,
            ),
            const DashDiv(),
            const Text(
              "Sell your home for more, pay a 1% listing fee when you sell and buy",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: RealtorButton(
                text: "Schedule Selling Consultation",
                color: Colors.red,
                onpressed: () {},
                styles: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
            //DashDiv(),
            const Text("Or, talk to a Realtor Agent about your home's value."),
            const SizedBox(
              height: 10.0,
            ),
            GestureDetector(
                onTap: () {},
                child: const Text(
                  "Request a free analysis",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )),
            const DashDiv(),
            const RealtorEstimate(),
            const Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                bottom: 20.0,
              ),
              child: HomeWorth(),
            ),
            const OwnerTools(),
            const DashDiv(),
            const MarketTrends(),
            const DashDiv(),
            const MarketingHomes(),
            const DashDiv(),
            const RecentlyListed(),
            const RecentlySold(),
            const ManageYourHome(),

            //
            const SizedBox(height: 30),
            const Text(
              "Address",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
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
                color: const Color.fromARGB(255, 218, 214, 214),
                onpressed: () {},
                styles: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
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
    return const Padding(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Divider(
        color: Colors.black,
        thickness: 2.0,
      ),
    );
  }
}
