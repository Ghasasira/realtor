import 'package:flutter/material.dart';

class ListedBy extends StatelessWidget {
  final String? name;
  const ListedBy({
    super.key,
    this.name,
  });

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
              "Listed By $name".toUpperCase(),
              style: TextStyle(color: Colors.green),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
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
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }
}
