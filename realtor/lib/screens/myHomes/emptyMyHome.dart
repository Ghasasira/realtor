import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/reusables/realtorButton.dart';
import 'package:realtor/reusables/universalPages/addHome.dart';

class EmptyMyHome extends StatelessWidget {
  const EmptyMyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 121, 233, 214),
                    borderRadius: BorderRadius.circular(50.0)),
              ),
              Icon(
                Icons.house,
                size: 100.0,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Text("Do you own a home?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 5.0,
            ),
            child: Text("Track your home's value and nearby sales."),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: RealtorButton(
              styles: TextStyle(color: Colors.white),
              color: Colors.red,
              onpressed: () {
                //Get.to(AddHome());
              },
              text: "Claim my Home",
            ),
          )
        ],
      ),
    );
  }
}
