import 'package:flutter/material.dart';
import 'package:test_app/widgets/clothes_grid.dart';
import 'package:test_app/models/clothes_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Clothes> clothes = [
    Clothes(id: 1, name: "Sweater", img: 'https://images.pexels.com/photos/45982/pexels-photo-45982.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', description: 'Sweater with blue and white stripes', price: '800 denars'),
    Clothes(id: 2, name: "Jeans", img: 'https://images.pexels.com/photos/4210866/pexels-photo-4210866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', description: 'Light blue jeans', price: '1300 denars'),
    Clothes(id: 3, name: "Dress", img: 'https://images.pexels.com/photos/1936854/pexels-photo-1936854.jpeg?auto=compress&cs=tinysrgb&w=400', description: 'Yellow dress with puffy sleeves', price: '1000 denars'),
    Clothes(id: 4, name: "T-shirt", img: 'https://images.pexels.com/photos/4066293/pexels-photo-4066293.jpeg?auto=compress&cs=tinysrgb&w=400', description: 'Basic black oversized t-shirt', price: '400 denars'),
    Clothes(id: 5, name: "Pants", img: 'https://images.pexels.com/photos/1006991/pexels-photo-1006991.jpeg?auto=compress&cs=tinysrgb&w=400', description: 'Black striped slim-legged pants', price: '900 denars'),
    Clothes(id: 6, name: "Hoodie", img: 'https://images.pexels.com/photos/1183266/pexels-photo-1183266.jpeg?auto=compress&cs=tinysrgb&w=400', description: 'Bright yellow oversized hoddie', price: '1300 denars'),
    Clothes(id: 7, name: "Pants", img: 'https://images.pexels.com/photos/27066107/pexels-photo-27066107/free-photo-of-woman-wearing-white-pants.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', description: 'White straight leg pants', price: '750 denars'),
    Clothes(id: 8, name: "Dress", img: 'https://images.pexels.com/photos/1377451/pexels-photo-1377451.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', description: 'Red dress with tulle and long sleves', price: '1100 denars')
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigo[300],
        leading: IconButton(onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.yellowAccent[200], size: 24,)),
        title: Text("213103", style: TextStyle(color: Colors.yellowAccent[200], fontSize: 32, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.settings, color: Colors.yellowAccent[200], size: 24))
        ],
      ),
      body: ClothesGrid(clothes: clothes),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}
