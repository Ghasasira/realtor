import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:realtor/data/property_list.dart';
import 'package:realtor/models/house.dart';

class PropertyController extends GetxController {
  var SearchController = TextEditingController();
  RxList<House> allProperty = <House>[].obs;
  RxList<House> favorites = <House>[].obs;
  RxList<House> myProperty = <House>[].obs;

  void fetchProducts() async {
    try {
      var allPropertylist = all;
      for (var prop in allPropertylist) {
        House house = House(
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
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
