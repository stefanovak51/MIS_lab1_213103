import 'package:flutter/material.dart';
import 'package:test_app/models/clothes_model.dart';
import 'package:test_app/widgets/clothes_card.dart';

class ClothesGrid extends StatefulWidget {
  final List<Clothes> clothes;
  const ClothesGrid({super.key, required this.clothes});
  @override
  _ClothesGridState createState() => _ClothesGridState();
}
class _ClothesGridState extends State<ClothesGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(8),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.clothes.map((clothes) =>
          ClothesCard(id: clothes.id, name: clothes.name, image: clothes.img, description: clothes.description, price: clothes.price),
      ).toList(),
    );
  }
}
