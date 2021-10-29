import 'package:flutter/material.dart';

class MeinStall extends StatelessWidget {
  // In the constructor, require a Todo.
  const MeinStall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mein Stall"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [const Text("Pferd1"), const Text("Pferd2")],
          ),
        ));
  }
}
