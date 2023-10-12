import 'package:flutter/material.dart';
import 'package:realtor/reusables/realtorButton.dart';

class FindHomes extends StatelessWidget {
  const FindHomes({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          height: 45.0,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 30,
                                ),
                                Text(
                                  "Search",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          )),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.list_outlined,
                        size: 25.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "Filters",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    RealtorButton(
                      color: Colors.red,
                      text: "Save Search",
                      onpressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
