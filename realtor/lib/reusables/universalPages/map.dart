import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapwindow extends StatefulWidget {
  const Mapwindow({super.key});

  @override
  State<Mapwindow> createState() => _MapwindowState();
}

class _MapwindowState extends State<Mapwindow> {
  List<Marker> markers = [
    Marker(
      markerId: MarkerId('marker1'),
      position: LatLng(0.357596, 33.582520), // Coordinates of the marker
      infoWindow: InfoWindow(
        title: 'Marker 1',
        snippet: 'This is marker 1',
      ),
    ),
    Marker(
      markerId: MarkerId('marker2'),
      position: LatLng(0.367596, 31.582520),
      infoWindow: InfoWindow(
        title: 'Marker 2',
        snippet: 'This is marker 2',
      ),
    ),
    // Add more markers as needed
  ];

  late GoogleMapController _controller;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  static final _initialCameraPosition =
      CameraPosition(target: LatLng(0.347596, 32.582520), zoom: 10.5);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (GoogleMapController controller) {
        _controller = controller;
      },
      myLocationButtonEnabled: true,
      zoomControlsEnabled: true,
      initialCameraPosition: _initialCameraPosition,
      markers: Set.from(markers),
    );
  }
}
