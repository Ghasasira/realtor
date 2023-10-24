import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/controllers/propertyController.dart';

class HeroSection extends StatelessWidget {
  final PropertyController controller;
  HeroSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          color: Colors.amber,
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$ ${controller.singleHouse[0].price}",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Price'),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.singleHouse[0].beds.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Beds'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.singleHouse[0].baths.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Baths'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.singleHouse[0].sqft.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Sq.Ft.'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          controller.singleHouse[0].street.toUpperCase(),
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Text(
          "${controller.singleHouse[0].city}, ${controller.singleHouse[0].state}"
              .toUpperCase(),
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }
}
