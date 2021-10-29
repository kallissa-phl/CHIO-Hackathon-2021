import 'package:chioton/aktuelles_pferd.dart';
import 'package:chioton/custom_icons/horse_head_icons.dart';
import 'package:flutter/material.dart';
import 'pferdesuche.dart';
import 'meinstall.dart';

void main() => runApp(const MyApp());

const String _title = 'Chioton';

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  //start with current horse
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    InitPferdesuche(),
    MeinStall(),
    AktuellesPferd(pferdeid: "0"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pferdesuche',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Mein Stall',
          ),
          BottomNavigationBarItem(
            icon: Icon(HorseHead.horseIcon),
            label: 'Aktuelles Pferd',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class InitPferdesuche extends StatefulWidget {
  const InitPferdesuche({Key? key}) : super(key: key);

  @override
  _InitPferdesucheState createState() => _InitPferdesucheState();
}

class _InitPferdesucheState extends State<InitPferdesuche> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      Pferdesuche(pferdeid: _controller.text)));
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Gib die Nummer des zu suchenden Pferdes ein"),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.20),
              child: TextField(
                textAlign: TextAlign.center,
                controller: _controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
