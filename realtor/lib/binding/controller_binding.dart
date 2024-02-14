import 'package:get/get.dart';
import 'package:realtor/controllers/network/networkController.dart';
import 'package:realtor/controllers/propertyController.dart';

class ControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    //Get.put(NetworkConnectivityController(), permanent: true);
    Get.put(PropertyController());
  }
}
