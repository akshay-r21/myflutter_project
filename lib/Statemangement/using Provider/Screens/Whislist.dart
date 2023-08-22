import 'dart:js';
import 'package:provider/provider.dart';
import 'package:myflutter_project/Statemangement/using Provider/providers/movieprovider.dart';
import 'package:flutter/material.dart';

class wishlist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final wishlistt = context.watch<movieprovide>().wishmovie;

    return Scaffold(
        appBar: AppBar(
          title: Text("Wishlist ${wishlistt.length}"),
        ),
        body: ListView.builder(
            itemCount: wishlistt.length,
            itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(wishlistt[index].title),
              subtitle: Text(wishlistt[index].time ?? "no time"),
              trailing: TextButton(
                  onPressed: () {
                    context
                        .read<movieprovide>()
                        .removeFromList(wishlistt[index]);
                  },
                  child: Text("Remove")),
            ),
          );
        }));
  }
}
