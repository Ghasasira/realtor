import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';
import 'package:flutter_google_places/flutter_google_places.dart';

//final googlePlace = GooglePlace('YOUR_API_KEY');

class SchoolController extends GetxController {
  RxList nearBySchools = [].obs;

  List response = [];

  Future<List<Map<String, dynamic>>> getNearbySchools(
      double latitude, double longitude, double radius) async {
    final overpassUrl = 'https://overpass-api.de/api/interpreter';
    final overpassQuery = '''
    [out:json];
    (
      node["amenity"="school"](around:$radius,$latitude,$longitude);
    );
    out center;
  ''';

    final response =
        await http.post(Uri.parse(overpassUrl), body: overpassQuery);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return List<Map<String, dynamic>>.from(data['elements']);
    } else {
      throw Exception('Failed to load OSM data');
    }
  }
}
