import 'package:flutter/material.dart';
import 'package:myflutter_project/productcard.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewScreen(),debugShowCheckedModeBanner: false,
  ));
}

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List name = [
      "Pineapple",
      "Orange",
      "Grapes",
      'Mango',
      "pineapple",
      "mango",
      "grapes"
    ];
    List unit = ["kg", "kg", "kg", "kg", "kg", "kg", "kg"];
    List price = ["20", "20", "20", "20", "20", "20", "20"];
    List image = [
      "Assets/Icons/pineapple.png",
      "Assets/Icons/orange.png",
      "Assets/Icons/grapes.png",
      "Assets/Icons/mango.png",
      "Assets/Icons/pineapple.png",
      "Assets/Icons/mango.png",
      "Assets/Icons/grapes.png",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff263238),
        title: const Center(
          child: Text("Product List"),
        ),
        actions: const [Icon(Icons.shopping_cart)],
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return ProductCard(
            name: name[index],
            unit: unit[index],
            price: price[index],
            imageUrl: image[index],
          );
        },
      ),
    );
  }
}
