//import 'package:flutter/rendering.dart';

class House {
  final double? price;
  final double? beds;
  final double? baths;
  final double? sqft;
  final double? agentCommision;
  final double? lot;
  final List? location;
  final String? listedBy;
  final String? street;
  final String? city;
  final String? state;
  final String? style;
  final String? built;
  final String? status;
  final String? open;
  final List? images;
  final int id;
  final bool? fav;

  House({
    required this.id,
    this.images,
    this.agentCommision,
    this.baths,
    this.beds,
    this.built,
    this.city,
    this.listedBy,
    this.location,
    this.lot,
    this.open,
    this.price,
    this.sqft,
    this.state,
    this.status,
    this.street,
    this.style,
    this.fav,
  });
}
