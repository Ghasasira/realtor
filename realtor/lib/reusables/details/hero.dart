import 'package:cached_network_image/cached_network_image.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:get/get.dart';
import 'package:realtor/controllers/propertyController.dart';

class HeroSection extends StatelessWidget {
  final PropertyController controller;
  HeroSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: [
            SizedBox(
              height: 300.0,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "images/background.jpg",
                fit: BoxFit.cover,
              ),
            ),
            ImageSlider(
              all_images: [
                controller.singleHouse[0].images[0],
                controller.singleHouse[0].images[1],
              ],
              //image: controller.singleHouse[0].images[0],
            )

            // CachedNetworkImage(
            //   imageUrl: controller.singleHouse[0].images[0],
            //   imageBuilder: (context, imageProvider) => Container(
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: imageProvider,
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //   ),
            //   placeholder: (context, url) =>
            //       const Center(child: CircularProgressIndicator()),
            //   errorWidget: (context, url, error) => const Icon(Icons.error),
            // ),
          ]),
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$ ${controller.singleHouse[0].price}",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Price'),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.singleHouse[0].beds.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Beds'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.singleHouse[0].baths.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Baths'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.singleHouse[0].sqft.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Sq.Ft.'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          controller.singleHouse[0].street.toUpperCase(),
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Text(
          "${controller.singleHouse[0].city}, ${controller.singleHouse[0].state}"
              .toUpperCase(),
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }
}

class ImageSlider extends StatelessWidget {
  final List<String> all_images;

  const ImageSlider({
    super.key,
    required this.all_images,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300.0,
        width: MediaQuery.of(context).size.width,
        child: FlutterCarousel(
          options: CarouselOptions(
            height: 300.0,
            viewportFraction: 1,
            showIndicator: true,
            slideIndicator: CircularSlideIndicator(),
          ),
          items: all_images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return CachedNetworkImage(
                  imageUrl: i,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                );
              },
            );
          }).toList(),
        ));
  }
}
