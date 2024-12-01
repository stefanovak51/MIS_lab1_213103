import 'package:flutter/material.dart';

class ClothesCardData extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String price;

  const ClothesCardData({super.key, required this.name, required this.image, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.network(image, fit: BoxFit.fitHeight, alignment: Alignment.bottomRight)),
        const Divider(),
        Text("${name[0].toUpperCase()}${name.substring(1)}",
          style:  TextStyle(fontSize: 21, color: Colors.indigo[800]),
        ),
      ],
    );
  }
}
