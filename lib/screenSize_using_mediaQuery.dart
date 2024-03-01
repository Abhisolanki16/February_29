import 'dart:convert';

import 'package:flutter/material.dart';

class ScreenSize extends StatefulWidget {
  const ScreenSize({super.key});

  @override
  State<ScreenSize> createState() => _ScreenSizeState();
}

class _ScreenSizeState extends State<ScreenSize> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(body: Builder(
      builder: (context) {
        if (mediaQuery.orientation == Orientation.portrait) {
          return PortraitWidget(mediaQuery.size);
        } else {
          return LandscapeWidget(mediaQuery.size);
        }
      },
    ));
  }
}

Widget PortraitWidget(Size size) {
  //return Center(child: Text("Screen Height is ${size.height} \nScreen Width is ${size.width}"),);
  return Center(
      child: Container(
    alignment: Alignment.center,
    height: size.height / 1.1,
    width: size.width / 1.1,
    color: Colors.blue.shade100,
    child:  Text("Portrait\nScreen Height is ${size.height} \nScreen Width is ${size.width}",),
  ));
}

Widget LandscapeWidget(Size size) {
  return Center(
      child: Container(
    alignment: Alignment.center,
    height: size.height / 1.1,
    width: size.width / 1.1,
    color: Colors.yellow,
    child:  Text("Landscape\nScreen Height is ${size.height} \nScreen Width is ${size.width}"),
  ));
}
// Center(child: Text("Screen Height is $screenHeight \nScreen Width is $screenWidth"),)