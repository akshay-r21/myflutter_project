import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_project/Statemangement/using%20Provider/Modal/Movie.dart';
import 'package:myflutter_project/Statemangement/using%20Provider/Screens/Whislist.dart';
import 'package:myflutter_project/Statemangement/using%20Provider/providers/movieprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<movieprovide>(
      create: (context) => movieprovide(),
      child: MaterialApp(
        home: home(),
        debugShowCheckedModeBanner: false,
      )));
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var movie_to_wishlist = context.watch<movieprovide>().wishmovie ;
    var movies = context.watch<movieprovide>().movies;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => wishlist()));
                  },
                  icon: Icon(Icons.favorite),
                  label: Text("Wishlist ${movie_to_wishlist.length}")),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: movies.length,
                    itemBuilder: (context, index) {
                      final current_movie = movies[index];
                      return Card(
                          child: ListTile(
                        title: Text(current_movie.title),
                        subtitle: Text(current_movie.time!),
                        trailing: IconButton(
                          onPressed: () {
                            if(!movie_to_wishlist.contains(current_movie)){
                              context.read<movieprovide>().addToList(current_movie);
                            }
                            else
                              {
                                context.read<movieprovide>().movies;
                              }
                          },
                          icon: Icon(Icons.favorite,color: movie_to_wishlist.contains(current_movie) ? Colors.red : Colors.white,),
                        ),
                      ));
                    }))
          ],
        ),
      ),
    );
  }
}
