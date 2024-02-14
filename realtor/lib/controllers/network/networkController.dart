import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkConnectivityController extends GetxController {
  // ConnectivityResult connectionStatus = ConnectivityResult.none.obs();
  final Connectivity _connectivity = Connectivity();
  // late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void onInit() {
    super.onInit();

    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(ConnectivityResult connectivityResult) {
    if (connectivityResult != ConnectivityResult.wifi) {
      Get.rawSnackbar(
        message: "No Internet Connection !",
        isDismissible: false,
        duration: const Duration(days: 1),
        backgroundColor: Colors.redAccent,
        icon: Icon(Icons.warning_amber),
        snackStyle: SnackStyle.GROUNDED,
        margin: EdgeInsets.zero,
      );
    }
  }

  // @override
  // void dispose() {
  //   _connectivitySubscription.cancel();
  //   super.dispose();
  // }

  // Future<void> initConnectivity() async {
  //   late ConnectivityResult result;
  //   // Platform messages may fail, so we use a try/catch PlatformException.
  //   try {
  //     result = await _connectivity.checkConnectivity();
  //   } on PlatformException catch (e) {
  //     //developer.log('Couldn\'t check connectivity status', error: e);
  //     return;
  //   }

  //   // If the widget was removed from the tree while the asynchronous platform
  //   // message was in flight, we want to discard the reply rather than calling
  //   // setState to update our non-existent appearance.

  //   // if (!mounted) {
  //   //   return Future.value(null);
  //   // }

  //   return _updateConnectionStatus(result);
  // }

  // Future<void> _updateConnectionStatus(ConnectivityResult result) async {
  //   //setState(() {
  //   connectionStatus = result;
  // }
}
