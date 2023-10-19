import 'package:flutter/material.dart';
import 'package:realtor/reusables/details/favs/sort.dart';
import 'package:realtor/screens/Favorite/emptyFav.dart';
import 'package:realtor/screens/Favorite/loadedFav.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Favourites",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),
          //actions: [],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LoadedFav(),
          //EmptyFav(),
        ),
      ),
    );
  }
}
