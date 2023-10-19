import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/reusables/filterbutton.dart';
import 'package:realtor/reusables/realtorButton.dart';
import 'package:realtor/reusables/universalPages/map.dart';
import 'package:realtor/screens/searchScreen.dart';

class FindHomes extends StatelessWidget {
  const FindHomes({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(SearchScreen());
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          height: 35.0,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 231, 229, 229),
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
                    FilterButton(onPressed: () {}, text: "filter"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: SizedBox(
                        width: 120.0,
                        child: RealtorButton(
                          color: Colors.red,
                          text: "Save Search",
                          onpressed: () {},
                          styles: TextStyle(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    //height: MediaQuery.of(context).size.height * 0.65,
                    //color: Colors.amber,
                    child: Mapwindow(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
