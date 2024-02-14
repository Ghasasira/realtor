import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:http/http.dart' as http;
import 'package:realtor/controllers/network/networkController.dart';
import 'package:realtor/data/property_list.dart';
import 'package:realtor/models/house.dart';
import 'package:realtor/models/property.dart';
import 'package:realtor/screens/myHomes/myhome.dart';
import 'package:realtor/utilities/api_end_points.dart';

class PropertyController extends GetxController {
  NetworkConnectivityController netController =
      Get.put(NetworkConnectivityController());
  var SearchController = TextEditingController();
  RxList<Property> allProperty = <Property>[].obs;
  RxList<Property> fetchedProperty = <Property>[].obs;
  RxList<Property> favorites = <Property>[].obs;
  RxList<Property> myProperty = <Property>[].obs;
  RxList<House> myShortList = <House>[].obs;
  RxList singleHouse = [].obs;
  RxList singleMyHouse = [].obs;
  RxList filteredFeedProperty = <Property>[].obs;
  RxList searchResults = [].obs;

  //...........
  final String url = '';
  final String authToken = "";
  late Future data;
  //...........

  @override
  void onInit() {
    //checkConnectivity();
    fetchFromBack();
    //fetchProducts();
    // fetchMyProducts();
    filterAll();

    // TODO: implement onInit
    super.onInit();
  }

  // Future<void> checkConnectivity() async {
  //   // var connectivityResult = await (Connectivity().checkConnectivity());
  //   print("...................\n");
  //   print(netController.connectionStatus);
  //   print(".....................\n");
  //   if (netController.connectionStatus != ConnectivityResult.mobile ||
  //       netController.connectionStatus != ConnectivityResult.wifi ||
  //       netController.connectionStatus != ConnectivityResult.ethernet) {
  //     showDialog(
  //         context: Get.context!,
  //         builder: (context) {
  //           return SimpleDialog(
  //             title: Text("Connectivity Error"),
  //             contentPadding: EdgeInsets.all(15.0),
  //             children: [
  //               Text(
  //                   "Make sure your device is connected to internet and try again.")
  //             ],
  //           );
  //         });
  //     print("No internet connection");
  //   }
  //   if (netController.connectionStatus == ConnectivityResult.vpn) {
  //     print("Disconnect VPN and come back");
  //   }
  //   try {
  //     fetchProducts();
  //     fetchMyProducts();
  //     filterAll();
  //     fetchFromBack();
  //   } catch (e) {
  //     print("Error : $e");
  //   }
  // }

  // void fetchProducts() async {
  //   try {
  //     var listings = <House>[];
  //     //var allPropertylist = all;
  //     for (var prop in all) {
  //       House house = House(
  //         id: prop["id"],
  //         fav: prop["fav"],
  //         price: prop["price"],
  //         beds: prop["beds"],
  //         baths: prop["baths"],
  //         sqft: prop["sqft"],
  //         agentCommision: prop["agentCommision"],
  //         lot: prop["lot"],
  //         location: prop["location"],
  //         listedBy: prop["listedBy"],
  //         street: prop["street"],
  //         city: prop["city"],
  //         style: prop["style"],
  //         state: prop["state"],
  //         built: prop["built"],
  //         status: prop["status"],
  //         open: prop["open"],
  //         images: prop["images"],
  //       );
  //       listings.add(house);
  //     }
  //     // allProperty.addAll(listings);
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  // void fetchMyProducts() async {
  //   try {
  //     var myProperties = <Property>[];
  //     var allMyPropertylist = allProperty;
  //     for (var prop in myProps) {
  //       Property house = Property(
  //         id: prop["ID"],
  //         locationID: prop["LocationID"],
  //         price: prop["Price"],
  //         beds: prop["Beds"],
  //         baths: prop["Baths"],
  //         sqft: prop["SquareFeet"],
  //         agentCommision: prop["AgentCommision"],
  //         lot: prop["Lot"],
  //         location: [prop["Latitude"], prop['Longitude']], //................
  //         listedBy: prop["ListedBy"],
  //         street: prop["Street"],
  //         description: prop["Description"],
  //         style: prop["Style"],
  //         keywords: [prop["Keywords"]],
  //         built: prop["Built"],
  //         status: prop["Status"],
  //         open: prop["Open"],
  //         images: prop["images"],
  //         fav: prop["fav"],
  //       );
  //       myProperties.add(house);
  //     }
  //     myProperty.addAll(myProperties);
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  void fetchSingleItem(int id) {
    try {
      singleHouse.clear();
      final item = allProperty.firstWhere((element) => element.id == id);
      singleHouse.add(item);
    } catch (e) {
      print(e.toString());
    }
    //print(singleHouse[0].id);
  }

  void fetchSingleMyHomeItem(int id) {
    try {
      singleMyHouse.clear();
      final item = myProperty.firstWhere((element) => element.id == id);
      singleMyHouse.add(item);
      //print(singleMyHouse[0].id);
    } catch (e) {
      print(e.toString());
      //print('failed');
    }
  }

  void filterAll() {
    filteredFeedProperty.clear();
    filteredFeedProperty = allProperty;
    print(filteredFeedProperty.length);
  }

  void filterFavs() {
    try {
      filteredFeedProperty.clear();
      final items = allProperty.where((element) => element.fav == true);
      filteredFeedProperty.addAll(items);
      print(filteredFeedProperty.length);
    } catch (e) {
      print(e.toString());
    }
  }

  void filterStatus(tag) {
    try {
      filteredFeedProperty.clear();
      final items = allProperty.where((element) => element.status == tag);
      filteredFeedProperty.addAll(items);
      print(filteredFeedProperty.length);
    } catch (e) {
      print(e.toString());
    }
  }

  void search(String query) {
    // Replace this with your actual search logic.
    List results = allProperty
        .where((item) =>
            item.street?.toLowerCase().contains(query!.toLowerCase()) ?? false)
        .toList();
    searchResults.addAll(results);
    //results;
  }

  void fetchFromBack() async {
    print(ApiEndPoints.baseUrl + ApiEndPoints.propertyPoints.getProperties);
    try {
      var headers = {
        "Content-Type": "application/json",
        'Authorization': 'Bearer ${ApiEndPoints.propertyPoints.token}',
      };
      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.propertyPoints.getProperties);

      http.Response response = await http.get(url, headers: headers);
      print(response.statusCode);

      if (response.statusCode == 200) {
        print("so far so good");
        final jsonresponse = jsonDecode(response.body);
        print(jsonresponse);
        if (jsonresponse["message"] == "Properties loaded.") {
          print(
              'Letsssssssssssssssssssssssssssssss gggggoooooooooooooooooooooooo');
          print(jsonresponse["total"]);
          try {
            var fetchedProps = <Property>[];
            var fetchedData = jsonresponse["properties"];

            for (var prop in fetchedData) {
              Property house = Property(
                id: prop["ID"],
                locationID: prop["LocationID"],
                price: prop["Price"],
                beds: prop["Beds"],
                baths: prop["Baths"],
                sqft: prop["SquareFeet"],
                agentCommision: prop["AgentCommision"],
                lot: prop["Lot"],
                location: [
                  prop["Latitude"],
                  prop['Longitude']
                ], //................
                listedBy: prop["ListedBy"],
                street: prop["Street"],
                description: prop["Description"],
                style: prop["Style"],
                keywords: [prop["Keywords"]],
                built: prop["Built"],
                status: prop["Status"],
                open: prop["Open"],
                images: prop["images"],
                fav: prop["fav"],
              );
              print(house.street);
              print(house.price);
              print(house.id);
              fetchedProps.add(house);
            }
            allProperty.addAll(fetchedProps);
            //fetchedProperty.addAll(fetchedProps);
          } catch (e) {
            print(e.toString());
          }
        } else {
          throw jsonDecode(jsonresponse.body)["message"] ?? "Unknown Error";
        }
      } else {
        // if (response.statusCode == 503) {
        //   throw "Unknown Error"; //jsonDecode(jsonresponse.body)["message"] ?? "Unknown Error";
        // } else {
        throw jsonDecode(response.body)["message"] ?? "Unknown Error";
      }
    } catch (e) {
      Get.back();
      Get.dialog(SimpleDialog(
        title: Text("Error"),
        contentPadding: EdgeInsets.all(15.0),
        children: [
          Text(
            e.toString(),
          ),
        ],
      ));
      // showDialog(
      //     context: Get.context!,
      //     builder: (context) {
      //       return SimpleDialog(
      //         title: Text("Error"),
      //         contentPadding: EdgeInsets.all(15.0),
      //         children: [Text(e.toString())],
      //       );
      //     });
    }
  }
}
