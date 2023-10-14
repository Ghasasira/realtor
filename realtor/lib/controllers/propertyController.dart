import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:realtor/models/house.dart';

class PropertyController extends GetxController {
  var SearchController = TextEditingController();
  RxList<House> allProperty = <House>[].obs;
  RxList<House> favorites = <House>[].obs;
  RxList<House> myProperty = <House>[].obs;
}
