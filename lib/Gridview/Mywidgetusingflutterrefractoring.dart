// using flutter refractoring

import 'package:flutter/material.dart';

class My_widget extends StatelessWidget {
  final Color? bgcolor;
  final Image? image;
  Widget? label;
  VoidCallback? onpress;

  My_widget(
      {this.image, required this.label, this.bgcolor, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: ListTile(
        leading: image,
        trailing: label,
        onTap: onpress,
      ),
    );
  }
}
