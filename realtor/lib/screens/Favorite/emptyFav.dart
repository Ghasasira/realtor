import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtor/home.dart';
import 'package:realtor/reusables/realtorButton.dart';
import 'package:realtor/screens/feed/feed.dart';

class EmptyFav extends StatelessWidget {
  const EmptyFav({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.favorite_border_outlined,
          size: 60.0,
        ),
        Text(
          'You have no Favorites',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        Text(
          "Favorite homes while you browse to stay upto date on their price changes",
          style: TextStyle(),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: RealtorButton(
            text: "Browse Homes",
            color: Colors.red,
            styles: const TextStyle(fontSize: 18),
            onpressed: () {},
          ),
        )
      ],
    );
  }
}
