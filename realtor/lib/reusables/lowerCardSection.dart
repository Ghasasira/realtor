import 'package:flutter/material.dart';

class ListedBy extends StatelessWidget {
  const ListedBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Listed By A Nigga".toUpperCase(),
              style: TextStyle(color: Colors.green),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.abc))
          ],
        ),
      ),
    );
  }
}

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recommended".toUpperCase(),
              style: TextStyle(color: Colors.green),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.abc))
          ],
        ),
      ),
    );
  }
}
