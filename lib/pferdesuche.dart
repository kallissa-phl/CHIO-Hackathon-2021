import 'package:flutter/material.dart';

class Pferdesuche extends StatelessWidget {
  // In the constructor, require a Todo.
  const Pferdesuche({Key? key, required this.pferdeid}) : super(key: key);

  // Declare a field that holds the Todo.
  final String pferdeid;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text("Searching for " + pferdeid + "..."),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(pferdeid),
        ),
      ),
    );
  }
}
