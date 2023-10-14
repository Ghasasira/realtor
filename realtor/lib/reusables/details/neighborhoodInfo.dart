import 'package:flutter/material.dart';
import 'package:realtor/reusables/details/hearder.dart';

class NeighborhoodInfo extends StatelessWidget {
  const NeighborhoodInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailHeader(
          text: "Neighborhood Info",
        ),
        NeighborhoodTile(
          score: "72/100",
          comment: "Walkable",
          label: "Walk Score",
          icon: Icons.person,
        ),
        NeighborhoodTile(
          score: "42/100",
          comment: "Some Transit",
          label: "Transit Score",
          icon: Icons.train,
        ),
        NeighborhoodTile(
          score: "68/100",
          comment: "Bikeable",
          label: "Bike Score",
          icon: Icons.pedal_bike,
        )
      ],
    );
  }
}

class NeighborhoodTile extends StatelessWidget {
  final String? label;
  final String? comment;
  final String? score;
  final IconData? icon;
  NeighborhoodTile(
      {super.key, this.comment, this.icon, this.label, this.score});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0, left: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "score",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(label!),
                  ],
                ),
              ),
            ],
          ),
          Text(
            comment!,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
