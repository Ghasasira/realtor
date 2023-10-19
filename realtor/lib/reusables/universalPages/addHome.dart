import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/reusables/universalPages/searchMyHome.dart';

class AddHome extends StatelessWidget {
  const AddHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 40.0),
            child: GestureDetector(
              onTap: () {
                Get.to(SearchMyHome());
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    "Enter your property's address",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Track your home's value and nearby sales",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          onPressed: () {},
                          child: Text("I'm the owner"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(150),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
