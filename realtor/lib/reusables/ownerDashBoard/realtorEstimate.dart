import 'package:flutter/material.dart';
import 'package:realtor/reusables/ownerDashBoard/headerText.dart';
import 'package:realtor/reusables/realtorButton.dart';

class RealtorEstimate extends StatelessWidget {
  const RealtorEstimate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OwnerHeader(
          text: "Realtor Estimate",
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 10.0,
          ),
          child: Text(
            "This Estimate is just a starting point and based on what we currently know about your home and nearby market",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 10.0,
          ),
          child: Text(
            "Unfortunately, we don't have enough data to generate an accurate Estimate at this time",
          ),
        ),
      ],
    );
  }
}

class SliderData extends StatelessWidget {
  final String? title;
  final double score;
  const SliderData({
    super.key,
    required this.score,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10.0, bottom: 5.0, right: 10.0, left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            //height: 30.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "\$ $score",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Slider(value: score, min: 0, max: 100000, onChanged: (value) {})
        ],
      ),
    );
  }
}

class Proceeds extends StatelessWidget {
  const Proceeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sale Proceeds",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              SliderData(
                score: 60000,
                title: "Home Sales Price",
              ),
              SliderData(
                score: 30000,
                title: "Outstanding Mortgage",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 10.0,
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 20.0,
                  left: 10.0,
                  right: 10.0,
                ),
                child: Column(
                  children: [
                    Text(
                      "Talk to Realtor Agent About Selling Your Home",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.90,
                      child: RealtorButton(
                        text: "Schedule a Consultation",
                        onpressed: () {},
                        color: Colors.red,
                        styles: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
