import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MeinStall extends StatefulWidget {
  // In the constructor, require a Todo.
  const MeinStall({Key? key}) : super(key: key);

  final String title = "Mein Stall";

  @override
  _MeinStallState createState() => _MeinStallState();
}

class _MeinStallState extends State<MeinStall> {
  CarouselController buttonCarouselController2 = CarouselController();

  final slider = CarouselSlider(
    options: CarouselOptions(
      height: 450,
      autoPlay: false,
      enlargeCenterPage: true,
    ),
    items: <Widget>[
      Container(
          height: 800.00,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('images/Casello.png'),
                fit: BoxFit.contain),
          )),
      Container(
          height: 800.00,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('images/Killer_Queen_VDM.png'),
                fit: BoxFit.contain),
          )),
      Container(
          height: 800.00,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('images/Gazelle.png'),
                fit: BoxFit.contain),
          )),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(child: slider),
          ],
        ),
      ),
    );
  }
}
