import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  @override
  Widget build(BuildContext context) {
    String mayMargin = '15';
    double myMarginAsDouble;
    try {
      myMarginAsDouble = double.parse(mayMargin);
    } catch (e) {
      print(e);
      myMarginAsDouble = 30.0;
    }
    return Scaffold();
  }
}
