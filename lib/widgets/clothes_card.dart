import 'package:flutter/material.dart';
import 'package:test_app/models/clothes_model.dart';
import 'package:test_app/widgets/clothes_card_data.dart';

class ClothesCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final String description;
  final String price;

  const ClothesCard({super.key, required this.id, required this.name, required this.image, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.indigo[100],
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        enableFeedback: true,
        splashColor: Colors.yellowAccent[100],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Clothes(id: id, name: name, img: image, description: description, price: price))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.yellowAccent.withOpacity(0.8), width: 4),
              borderRadius: BorderRadius.circular(10)
          ),
          child: ClothesCardData(image: image, name: name, description: description, price: price),
        ),
      ),
    );
  }
}
