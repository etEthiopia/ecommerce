import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.0,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('assets/c1.jpg'),
            AssetImage('assets/m1.jpeg'),
            AssetImage('assets/w3.jpeg'),
            AssetImage('assets/w4.jpeg'),
            AssetImage('assets/m2.jpg'),
          ],
          autoplay: true,
          dotSize: 4.0,
          autoplayDuration: Duration(seconds: 5),
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(seconds: 1),
        ));
  }
}
