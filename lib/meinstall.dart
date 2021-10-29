import 'package:chioton/aktuelles_pferd.dart';
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
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

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
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.5,
                height: 700,
                autoPlay: false,
                enlargeCenterPage: true,
              ),
              items: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AktuellesPferd(pferdeid: "Casello")),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/Casello.png'),
                            fit: BoxFit.contain)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AktuellesPferd(pferdeid: "Gazelle")),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/Gazelle.png'),
                            fit: BoxFit.contain)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AktuellesPferd(pferdeid: "Killer Queen VDM")),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                ExactAssetImage('images/Killer_Queen_VDM.png'),
                            fit: BoxFit.contain)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
