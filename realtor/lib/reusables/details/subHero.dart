import 'package:flutter/material.dart';
import 'package:realtor/reusables/realtorButton.dart';

class SubHero extends StatelessWidget {
  const SubHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                Text(
                  "Favorite",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Edit Facts",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share_outlined,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Favorite",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: RealtorButton(
            color: Colors.red,
            text: "Talk to Realtor About Selling",
            onpressed: () {},
            styles: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Text("Sell for more, pay 1% listing fee when you sell and buy"),
      ],
    );
  }
}
