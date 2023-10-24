import 'package:flutter/material.dart';
import 'package:realtor/reusables/realtorButton.dart';

class AskQn extends StatelessWidget {
  const AskQn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color.fromARGB(255, 230, 226, 226),
          ),
        ),
        Text(
          'Team X - Ghus and Josh',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
        ),
        Text('Realtor Partner Agent'),
        Text('Titan, The Real Estate Group'),
        Text(
          'Recently closed 20 Homes',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
          child: SizedBox(
            height: 60.0,
            width: MediaQuery.of(context).size.width * 0.95,
            child: RealtorButton(
              color: Color.fromARGB(255, 250, 245, 245),
              text:
                  "I'd like to know more about selling my home with Realtor Partner Agent",
              styles: TextStyle(color: Colors.black),
              onpressed: () {},
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: 40.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                "Ask Question",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 18.0),
              ),
            ),
          ),
        )
      ],
    );
  }
}
