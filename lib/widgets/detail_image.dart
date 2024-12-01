import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  final String image;

  const DetailImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.yellowAccent, width: 2)),
      child: Image.network(image, fit: BoxFit.cover, alignment: Alignment.center, width: 500, height: 500,),
    );
  }
}
