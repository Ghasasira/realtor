import 'package:flutter/material.dart';
import 'package:realtor/reusables/lowerCardSection.dart';

class PropertyCard extends StatelessWidget {
  final Widget? bottom;
  PropertyCard({super.key, this.bottom});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 8.0),
                child: Container(
                  height: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "For Sale",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        //textAlign: TextAlign.left,
                        TextSpan(
                          text: "\$ 50000",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: " Sale price",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.blueGrey),
                            )
                          ],
                        ),
                      ),
                      Wrap(
                        children: [Text("3.0 Beds 2.0 baths, 920.0 Sq.Ft.")],
                      ),
                      Wrap(
                        children: [
                          Text(
                            "ll23 Street, Kampala, Uganda",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share_outlined),
                    ),
                  ],
                ),
              )
            ],
          ),
          bottom!
          //Recommended(),
          //ListedBy(),
        ],
      ),
    );
  }
}
