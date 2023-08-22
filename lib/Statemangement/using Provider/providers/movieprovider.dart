import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../Modal/Movie.dart';

final List<movie> movielist = List.generate(
    100,
    (index) => movie(
        title: "Movie $index", time: "${Random().nextInt(100) + 60} minutes"));

class movieprovide extends ChangeNotifier {
  final List<movie> _movies = movielist;
  List<movie> get movies => _movies; //getter to access list of movies in home page

  final List<movie> _wishlist = [];
  List<movie > get wishmovie => _wishlist;

  void addToList(movie moviefrommain){
    _wishlist.add(moviefrommain);
    notifyListeners();
  }
  void removeFromList(movie removedmovie){
    _wishlist.remove(removedmovie);
    notifyListeners();
  }
}
