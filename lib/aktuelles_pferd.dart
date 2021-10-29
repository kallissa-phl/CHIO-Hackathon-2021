import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Pferd {
  final int userId;
  final int id;
  final String title;

  Pferd({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Pferd.fromJson(Map<String, dynamic> json) {
    return Pferd(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

Future<Pferd> fetchPferd() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/Pferds/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Pferd.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Pferd');
  }
}

class AktuellesPferd extends StatelessWidget {
  // In the constructor, require a Todo.
  const AktuellesPferd({Key? key, required this.pferdeid}) : super(key: key);

  final String title = "Aktuelles Pferd";
  final String pferdeid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aktuelles Pferd: " + pferdeid),
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
