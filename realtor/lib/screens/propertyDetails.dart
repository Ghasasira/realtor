import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:realtor/controllers/propertyController.dart';
import 'package:realtor/reusables/details/about_home.dart';
import 'package:realtor/reusables/details/askQuestion.dart';
import 'package:realtor/reusables/details/estimate.dart';
import 'package:realtor/reusables/details/hearder.dart';
import 'package:realtor/reusables/details/hero.dart';
import 'package:realtor/reusables/details/keyDetails.dart';
import 'package:realtor/reusables/details/neighborhoodInfo.dart';
import 'package:realtor/reusables/details/publicFacts.dart';
import 'package:realtor/reusables/details/schools.dart';
import 'package:realtor/reusables/details/subHero.dart';

class PropertyDetails extends StatelessWidget {
  final int id;
  PropertyDetails({super.key, required this.id});

  PropertyController propertyController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            HeroSection(controller: propertyController),
            DetailDiv(),
            SubHero(controller: propertyController),
            DetailDiv(),
            Estimate(),
            DetailDiv(),
            AboutHome(controller: propertyController),
            DetailDiv(),
            KeyDetails(controller: propertyController),
            DetailDiv(),
            AskQn(),
            DetailDiv(),
            PublicFacts(controller: propertyController),
            DetailDiv(),
            Schools(),
            DetailDiv(),
            NeighborhoodInfo(),
            DetailDiv(),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailHeader(
                    text: "Disclaimers",
                  ),
                  Text(
                      "Copyright 2023 " + loremIpsum(paragraphs: 1, words: 50)),
                ],
              ),
            ),
            DetailDiv(),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.house),
                  Text(
                      "Realtor is commited to ensure and abide by the FAIR HOUSING ACT and EQUAL OPPORTUNITIES ACT"),
                  TextButton(
                      onPressed: () {},
                      child: Text("Read Realtor's Fair Housing Policy"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailDiv extends StatelessWidget {
  const DetailDiv({
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
