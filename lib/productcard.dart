import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String unit;
  final String price;
  final String imageUrl;
  const ProductCard(
      {super.key,
        required this.name,
        required this.unit,
        required this.price,
        required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
        padding: const EdgeInsets.all(10),
        color: const Color(0xffb0bec6),
        child: Row(
            children: [
              Image.network(
                imageUrl,
                height: 70,
                width: 100,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Name:",
                        style: TextStyle(color: Color(0xff263238), fontSize: 16),
                      ),
                      Text(
                        name,
                        style: const TextStyle(
                            color: Color(0xff263238),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Unit:",
                        style: TextStyle(color: Color(0xff263238), fontSize: 16),
                      ),
                      Text(
                        unit,
                        style: const TextStyle(
                            color: Color(0xff263238),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Price:",
                        style: TextStyle(color: Color(0xff263238), fontSize: 16),
                      ),
                      Text(
                        price,
                        style: const TextStyle(
                            color: Color(0xff263238),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xff263238),
                  ),
                ),
                child: const Text("Add to Cart"),
              )
            ],
            ),
       );
    }
}
