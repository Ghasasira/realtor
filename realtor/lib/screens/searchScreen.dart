import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/controllers/propertyController.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List choiceList = ["For Sale", "For Rent", "Sold"];

  String selectedChoice = "For Sale";

  @override
  Widget build(BuildContext context) {
    PropertyController propertyController = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(
          onChanged: (query) {
            propertyController.search(query);
          },
          autofocus: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Color.fromARGB(255, 209, 208, 208),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: choiceList.map((choice) {
                    bool isSelected = (choice == selectedChoice);
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedChoice = choice;
                        });
                      },
                      child: Container(
                        height: 28.0,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: isSelected ? Colors.white : null,
                        ),
                        child: Center(child: Text(choice)),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Flexible(
                child: Obx(() {
                  if (propertyController.searchResults.isEmpty) {
                    return Text("No results");
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: propertyController.searchResults.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                                propertyController.searchResults[index].street),
                          );
                        },
                      ),
                    );
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
