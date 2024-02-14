import 'package:get/get.dart';
import 'package:realtor/controllers/propertyController.dart';

class MyPropertyController extends GetxController {
  RxList myProperty = [].obs;
  RxList favProperty = [].obs;
  final PropertyController propertyController = Get.find();

  void addPropertyToMyProperty(int id) {
    final item = propertyController.allProperty
        .firstWhere((element) => element.id == id);
    bool exists = favProperty.contains(item);
    if (!exists) {
      favProperty.add(item.id);
    } else {
      //favProperty.remove(item.id);
      print("already exists");
    }
  }

  void addPropertyToMyFavorites(int id) {
    final item = propertyController.allProperty
        .firstWhere((element) => element.id == id);
    bool exists = myProperty.contains(item);
    if (!exists) {
      myProperty.add(item.id);
    } else {
      myProperty.remove(item.id);
    }
  }
}
