import 'package:get/get.dart';
import 'package:realtor/controllers/network/networkController.dart';

class DependancyInjection {
  static void initialize() {
    Get.put(NetworkConnectivityController(), permanent: true);
  }
}
