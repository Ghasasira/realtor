//import 'package:flutter/rendering.dart';

class Property {
  final int? price;
  final int? beds;
  final int? baths;
  final int? sqft;
  final int? agentCommision;
  final int? lot;
  final List? location;
  final int? listedBy;
  final String? street;
  //final String? city;
  //final String? state;
  final String? style;
  final String? built;
  final String? status;
  final String? open;
  final List? images;
  final int id;
  final int? locationID;
  final String? description;
  final List<String>? keywords;
  //to be removed
  final bool? fav;

  Property({
    required this.id,
    this.images,
    this.agentCommision,
    this.baths,
    this.beds,
    this.built,
    this.locationID,
    this.listedBy,
    this.location,
    this.lot,
    this.open,
    this.price,
    this.sqft,
    this.description,
    this.status,
    this.street,
    this.style,
    this.keywords,
    this.fav,
  });
}
