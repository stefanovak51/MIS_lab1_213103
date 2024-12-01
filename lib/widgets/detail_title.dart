import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  final String name;
  const DetailTitle({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Chip(backgroundColor: Colors.indigo[50],
      label: Text("${name[0].toUpperCase()}${name.substring(1)}",
        style:  TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.indigo[800]),
      ),
    );
  }
}
