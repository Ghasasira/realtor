import 'package:flutter/material.dart';
import 'package:realtor/reusables/ownerDashBoard/headerText.dart';

class TopArea extends StatelessWidget {
  const TopArea({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width * 0.3,
                color: Colors.blue,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "455 Street",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      "Wandegeya, Kampala",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      "2.0 Beds  •  3.0 Baths  •  122.1 Sq.Ft.",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Edit photos",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Edit facts",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          OwnerHeader(
            text: "Market snapshot",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              "Based on the last 30 days",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OwnerCard(
                width: MediaQuery.of(context).size.width * 0.46,
                title: "Sale Activity",
                value: "17 sold",
                stat: "99.1% sale-to-list",
              ),
              OwnerCard(
                width: MediaQuery.of(context).size.width * 0.46,
                title: "Average Sale Price",
                value: "\$278,122",
                stat: "+67% since last month",
              ),
            ],
          ),
          OwnerCard(
            width: MediaQuery.of(context).size.width,
            title: "Complete Score",
            value: "48/100",
            stat: "Avg 50 days on market",
          ),
        ],
      ),
    );
  }
}

class OwnerCard extends StatelessWidget {
  final String? stat;
  final double width;
  final String? value;
  final String? title;
  const OwnerCard({
    this.title,
    this.stat,
    required this.width,
    this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      width: width,
      child: Card(
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            top: 10.0,
            bottom: 10.0,
            right: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title!,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                ),
              ),
              Text(
                value!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                ),
              ),
              Text(
                stat!,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
