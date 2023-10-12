import 'package:flutter/material.dart';
import 'package:realtor/reusables/realtorButton.dart';

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
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
          "Favorite homes while you browse to stay upto date on their price changes",
          style: TextStyle(fontSize: 16),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: RealtorButton(
            text: "Browse Homes",
            color: Colors.red,
            styles: const TextStyle(fontSize: 20),
            onpressed: () {},
          ),
        )
      ],
    );
  }
}
