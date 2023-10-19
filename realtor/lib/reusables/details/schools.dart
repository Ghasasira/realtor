import 'package:flutter/material.dart';
import 'package:realtor/reusables/details/hearder.dart';
import 'package:realtor/reusables/details/schoolCard.dart';

class Schools extends StatelessWidget {
  const Schools({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailHeader(
          text: "Schools",
        ),
        Text(
          "Great Schools Summary Rating",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 20),
        Container(
          height: 90.0 * 4,
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (itemCounter, context) {
                return const SchoolCard();
              }),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
            "This Data is Gotten From Great Schools,a non profit Organisation"),
        Text("Realtor doesnt in any way endorse or guarantee this information"),
        TextButton(
          onPressed: () {},
          child: Text("About Great Schools"),
        ),
      ],
    );
  }
}
