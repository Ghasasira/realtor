import 'package:flutter/material.dart';

class EmptyFeed extends StatelessWidget {
  const EmptyFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 160.0,
                    width: 160.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      color: Color.fromARGB(255, 170, 243, 237),
                    ),
                  ),
                  Container(
                      height: 140.0,
                      width: 140.0,
                      child: Image.asset("images/pic_feed.png")),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Nothing to show yet",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
