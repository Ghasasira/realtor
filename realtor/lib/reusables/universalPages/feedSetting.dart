import 'package:flutter/material.dart';

class FeedSettings extends StatefulWidget {
  const FeedSettings({super.key});

  @override
  State<FeedSettings> createState() => _FeedSettingsState();
}

class _FeedSettingsState extends State<FeedSettings> {
  double _sliderValue = 100000001;
  TextEditingController textFieldController =
      TextEditingController(text: "No Max");

  List locations = ["kampala", "wakiso", "Mukono", "Jinja", "Gulu", "Mbarara"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Feed Settings",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Location & price settings",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: Text("Max price"),
                ),
                SizedBox(
                    child: TextField(
                  keyboardType: TextInputType.number,
                  controller: textFieldController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    //label: Text("No max"),
                  ),
                  // onChanged: (){
                  //   setState(() {
                  //     _sliderValue=text
                  //   });
                  // },
                )),
                Slider(
                  max: 100000001,
                  min: 50000,
                  value: _sliderValue,
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                      value.toInt() == 100000001
                          ? textFieldController.text = "No Max"
                          : textFieldController.text = value.toStringAsFixed(0);
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text("Manage locations shown in your feed"),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: locations.map((location) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(location),
                          LocationSwitch(),
                        ],
                      );
                    }).toList()),
              ],
            ),
          ),
          SpacerContainer(),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Recommendations",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                        "Turn off to limit your feed to your saved searches"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text("Recommended for you"),
                      ),
                      Recommendationswitch(),
                    ],
                  )
                ],
              ),
            ),
          ),
          SpacerContainer(),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Text("Saved Searches"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Text(
                        "Save a search on the map and we'll notify you about updates that match your search"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SpacerContainer extends StatelessWidget {
  const SpacerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 226, 224, 224),
      height: 10.0,
      width: MediaQuery.of(context).size.width,
    );
  }
}

class Recommendationswitch extends StatefulWidget {
  const Recommendationswitch({super.key});

  @override
  State<Recommendationswitch> createState() => RecommendationnswitchState();
}

class RecommendationnswitchState extends State<Recommendationswitch> {
  bool _isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Switch(
        value: _isSwitched,
        onChanged: (value) {
          setState(() {
            _isSwitched = value;
          });
        },
      ),
    );
  }
}

class LocationSwitch extends StatefulWidget {
  const LocationSwitch({super.key});

  @override
  State<LocationSwitch> createState() => _LocationSwitchState();
}

class _LocationSwitchState extends State<LocationSwitch> {
  bool allow = true;
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: allow,
        onChanged: (value) {
          setState(() {
            allow = value;
          });
        });
  }
}
