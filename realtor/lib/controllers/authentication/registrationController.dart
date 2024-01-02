import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:realtor/utilities/api_end_points.dart';

class RegisterByEmailController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool password_not_matching = false;

  //final future<SharedPreferences> prefs = SharedPreferences.getInstance();

  Future<void> registerWithEmail() async {
    if (passwordController.text == confirmPasswordController.text) {
      try {
        var headers = {"Content-Type": "application/json"};
        var url = Uri.parse(
            ApiEndPoints.baseUrl + ApiEndPoints.authEndPoint.registerWithEmail);
        Map body = {
          "email": emailController.text.trim(),
          "name": firstNameController.text.trim() + lastNameController.text,
          "password": passwordController.text,
        };
        http.Response response =
            await http.post(url, body: jsonEncode(body), headers: headers);

        if (response.statusCode == 200) {
          final jsonresponse = jsonDecode(response.body);
          if (jsonresponse["code"] == 0) {
            //var token = jsonresponse["data"]['token'];

            //final SharedPreferences? prefs = await prefs;
            // await prefs?.setString("token", token);

            emailController.dispose();
            passwordController.dispose();
            lastNameController.dispose();
            firstNameController.dispose();
            confirmPasswordController.dispose();
          } else {
            throw jsonDecode(jsonresponse.body)["message"] ?? "Unknown Error";
          }
        } else {
          throw jsonDecode(response.body)["message"] ?? "Unknown Error";
        }
      } catch (e) {
        Get.back();
        showDialog(
            context: Get.context!,
            builder: (context) {
              return SimpleDialog(
                title: Text("Error"),
                contentPadding: EdgeInsets.all(15.0),
                children: [Text(e.toString())],
              );
            });
      }
    } else {
      password_not_matching = true;
    }
  }
}
