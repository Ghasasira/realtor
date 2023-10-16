import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SchoolCard extends StatelessWidget {
  const SchoolCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 221, 217, 217),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    "8/10",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hogwarts School",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("Public • 0.8 km"),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.yellow,
                      ),
                      Text("24 reviews"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
