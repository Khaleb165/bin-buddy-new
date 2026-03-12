// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/constants.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static LatLng sourceLocation = LatLng(7.9465, -1.0232);
  static LatLng destination = LatLng(6.6666, -1.6163);

  List<LatLng> polylineCoordinates = [];

  // LocationData? currentLocation;

  // void getCurrentLocation (){
  //   Location location = Location();
  //   location.getLocation().then((location) {
  //     currentLocation = location;
  //   });
  // }

  Future<void> getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        google_api_key,
        PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
        PointLatLng(destination.latitude, destination.longitude));

    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng point) =>
            polylineCoordinates.add(LatLng(point.latitude, point.longitude)),
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    getPolyPoints();
    // getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: unnecessary_null_comparison
      body: sourceLocation == null
          ? Center(
              child: Text('Loading'),
            )
          : GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: sourceLocation, zoom: 7),
              polylines: {
                Polyline(
                    polylineId: PolylineId('route'),
                    points: polylineCoordinates,
                    color: buttonColor,
                    width: 5),
              },
              markers: {
                Marker(
                  markerId: MarkerId('source'),
                  position: sourceLocation,
                ),
                Marker(
                  markerId: MarkerId('destination'),
                  position: destination,
                )
              },
            ),
    );
  }
}
