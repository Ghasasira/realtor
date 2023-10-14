import 'package:flutter/material.dart';
import 'package:realtor/reusables/menuTile.dart';

class MyRealtor extends StatelessWidget {
  const MyRealtor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Ghus Josh',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey,
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            MenuTile(
              icon: Icons.settings,
              label: "Past Tours",
            ),
            MenuTile(
              icon: Icons.settings,
              label: "Open House Schedule",
            ),
            MenuTile(
              icon: Icons.settings,
              label: "Recently",
            ),
            MenuTile(
              icon: Icons.settings,
              label: "Saved Searches",
            ),
            MenuTile(
              icon: Icons.settings,
              label: "Realtor Premier",
            ),
            MenuTile(
              icon: Icons.settings,
              label: "Sell Your Home",
            ),
            MenuTile(
              icon: Icons.settings,
              label: "List My Home For Rent",
            ),
            MenuTile(
              icon: Icons.settings,
              label: "Careers",
            ),
            MenuTile(
              icon: Icons.settings,
              label: "Classes and Events",
            ),
            MenuTile(
              icon: Icons.person,
              label: "Your Agent",
            ),
            MenuTile(
              icon: Icons.settings,
              label: "Settings",
            ),
            MenuTile(
              icon: Icons.flag,
              label: "Get Help",
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "SignOut(Ghus Josh)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ));
  }
}
