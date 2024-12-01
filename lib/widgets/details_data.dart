import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final String description;
  final String price;

  const DetailData({super.key, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 300,
      ),
      decoration:  BoxDecoration(
        color: Colors.white30,
        border: Border(top: BorderSide(width: 2, color: Colors.indigo)),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(71),
          topRight: Radius.circular(71),
        ),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("${description[0].toUpperCase()}${description.substring(1)}",
            style:  TextStyle(fontSize: 21, color: Colors.indigo[800]), textAlign: TextAlign.justify,
          ),
          Text("${price[0].toUpperCase()}${price.substring(1)}",
            style:  TextStyle(fontSize: 21, color: Colors.indigo[800], fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
