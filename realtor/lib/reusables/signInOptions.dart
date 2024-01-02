import 'package:flutter/material.dart';

class SignInOptions extends StatelessWidget {
  const SignInOptions({super.key});

  @override
  Widget build(BuildContext context) {
    const options = [
      {'icon': "images/house.jpg", 'label': "Google"},
      {'icon': "images/house.jpg", 'label': "Facebook"},
      {'icon': "images/house.jpg", 'label': "Apple"},
    ];
    return Column(
      children: options.map((option) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 2.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 46, 46, 46)),
              borderRadius: BorderRadius.circular(2.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Image.asset(
                    "images/house.jpg",
                    width: 25.0,
                    height: 25.0,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  //Text("lets Ride"),
                  Text(
                    "Continue with ${option['label']}",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
        //return Text("${option['label']}");
      }).toList(),
    );
    // return SizedBox(
    //   //height: 300.0,
    //   child: ListView.builder(
    //     itemCount: options.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       return Padding(
    //         padding: const EdgeInsets.only(top: 8.0, bottom: 2.0),
    //         child: Container(
    //           width: MediaQuery.of(context).size.width,
    //           decoration: BoxDecoration(
    //             border: Border.all(color: Color.fromARGB(255, 46, 46, 46)),
    //             borderRadius: BorderRadius.circular(2.0),
    //           ),
    //           child: Padding(
    //             padding: const EdgeInsets.all(12.0),
    //             child: Row(
    //               children: [
    //                 Image.asset(
    //                   "images/house.jpg",
    //                   width: 25.0,
    //                   height: 25.0,
    //                 ),
    //                 SizedBox(
    //                   width: 30.0,
    //                 ),
    //                 //Text("lets Ride"),
    //                 Text(
    //                   "Continue with ${options[index]['label']}",
    //                   style: TextStyle(
    //                     fontSize: 16.0,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
