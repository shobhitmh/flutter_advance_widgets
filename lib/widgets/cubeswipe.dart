import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class cubeswipe extends StatelessWidget {
  const cubeswipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[200],
        body: CarouselSlider(
            unlimitedMode: true,
            slideTransform: CubeTransform(
              rotationAngle: 60,
            ),
            slideIndicator:
                CircularSlideIndicator(padding: EdgeInsets.only(bottom: 10)),
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.purple,
              ),
            ]));
  }
}
