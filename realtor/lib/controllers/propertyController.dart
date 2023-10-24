import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:realtor/data/property_list.dart';
import 'package:realtor/models/house.dart';
import 'package:realtor/screens/myHomes/myhome.dart';

class PropertyController extends GetxController {
  var SearchController = TextEditingController();
  RxList<House> allProperty = <House>[].obs;
  RxList<House> favorites = <House>[].obs;
  RxList<House> myProperty = <House>[].obs;
  RxList<House> myShortList = <House>[].obs;
  RxList singleHouse = [].obs;
  RxList singleMyHouse = [].obs;

  @override
  void onInit() {
    fetchProducts();
    fetchMyProducts();
    // TODO: implement onInit
    super.onInit();
  }

  void fetchProducts() async {
    try {
      var listings = <House>[];
      //var allPropertylist = all;
      for (var prop in all) {
        House house = House(
          id: prop["id"],
          price: prop["price"],
          beds: prop["beds"],
          baths: prop["baths"],
          sqft: prop["sqft"],
          agentCommision: prop["agentCommision"],
          lot: prop["lot"],
          location: prop["location"],
          listedBy: prop["listedBy"],
          street: prop["street"],
          city: prop["city"],
          style: prop["style"],
          state: prop["state"],
          built: prop["built"],
          status: prop["status"],
          open: prop["open"],
          images: prop["images"],
        );
        listings.add(house);
      }
      allProperty.addAll(listings);
    } catch (e) {
      print(e.toString());
    }
  }

  void fetchMyProducts() async {
    try {
      var myProperties = <House>[];
      //var allPropertylist = all;
      for (var prop in myProps) {
        House house = House(
          id: prop["id"],
          price: prop["price"],
          beds: prop["beds"],
          baths: prop["baths"],
          sqft: prop["sqft"],
          agentCommision: prop["agentCommision"],
          lot: prop["lot"],
          location: prop["location"],
          listedBy: prop["listedBy"],
          street: prop["street"],
          city: prop["city"],
          style: prop["style"],
          state: prop["state"],
          built: prop["built"],
          status: prop["status"],
          open: prop["open"],
          images: prop["images"],
        );
        myProperties.add(house);
      }
      myProperty.addAll(myProperties);
    } catch (e) {
      print(e.toString());
    }
  }

  void fetchSingleItem(int id) {
    try {
      singleHouse.clear();
      final item = allProperty.firstWhere((element) => element.id == id);
      singleHouse.add(item);
      print(singleHouse[0].id);
    } catch (e) {
      print(e.toString());
      print('failed');
    }
    //print(singleHouse[0].id);
  }

  void addToFav(int id) {
    final item = allProperty.firstWhere((element) => element.id == id);
    bool exists = favorites.contains(item);
    if (!exists) {
      favorites.add(item);
    } else {
      favorites.remove(item);
    }
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
    //print(singleHouse[0].id);
  }
}
