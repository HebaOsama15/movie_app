
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_ui/features/models/movie_model.dart';

import '../../../features/controller/movie_controller.dart';

class WatchListWidget extends StatefulWidget {
   WatchListWidget({ Key? key }) : super(key: key);

  @override
  State<WatchListWidget> createState() => _WatchListWidgetState();
}

class _WatchListWidgetState extends State<WatchListWidget> {
  List<Movie> movie=[];

  MovieController movieController  = MovieController();
   @override
  void initState() {
   super.initState();
   movie = movieController.getAllMovies();
   //listSerial = serialController.getAllSerials();
 }
  @override
  Widget build(BuildContext context) {
    for (var e in movie) {
      print("List movi is: $e*****************");
    }
    return Expanded(
                  child: ListView.builder(
                    itemCount:movie.length,
                    itemBuilder: (context, index) {
                      //final movie = listMovies[index];
              
                      return InkWell(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.all(5),
                              height: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5)),
                                        child: Image.asset(movie[index].poster!,
                                            fit: BoxFit.fitWidth),
                                      ),
                                      const SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.amberAccent[700],
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "HD",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Text(
                                            movie[index].title!,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text(
                                            movie[index].classification!,
                                            style:
                                                const TextStyle(color: Colors.amber, fontSize: 15),
                                          ),
                                          const SizedBox(height: 8),
                                          RatingBarIndicator(
                                            rating: movie[index].rating!,
                                            itemBuilder: (context, index) => const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            itemCount: 5,
                                            itemSize: 20.0,
                                            direction: Axis.horizontal,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                 
                                ],
                              ),
                            ),
                            const Divider(color: Colors.grey),
                          ],
                        ),
                         onTap: ()=> Navigator.pushNamed(context, '/notification',),
              
                      );
                    },
                  ),
                );
  }
}