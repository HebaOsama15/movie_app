import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_ui/features/controller/favorateList.dart';
import 'package:movie_ui/features/models/movie_model.dart';

import '../../../core/componunts/scaffolds.dart/app_bar.dart';

class WacthList extends StatefulWidget {
  // String? titleAppBar = "WATCHLIST ";
  // final List<Movie> listMovies;
  // required this.listMovies
  // this.titleAppBar
   WacthList({Key? key, }) : super(key: key);

  @override
  State<WacthList> createState() => _WacthListState();
}

class _WacthListState extends State<WacthList> {
  List<int> selectedIndexes = [];
  bool isAllSelected = false;
  
  @override
  Widget build(BuildContext context) {
    FavorateList.listFav.forEach((element) => print(element.title),);
    return 
    Scaffold(
     // backgroundColor: const Color(0xFF1E1F22),
      appBar: AppBarMovi( "WATCHLIST", context, false),
     body: 
      FavorateList.listFav.isEmpty? 
      _emptyList():
      // SingleChildScrollView(
      //   child:
         Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            children: [
              ListTile(
                leading: Checkbox(
                   shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10)),
      
                  value: isAllSelected,
                  activeColor: Colors.grey,
                  onChanged: (value) {
                    setState(() {
                      isAllSelected = value!;
                      if (isAllSelected) {
                        selectedIndexes = List.generate(
                            FavorateList.listFav.length, (index) => index + 1);
                      } else {
                        selectedIndexes.clear();
                      }
                    });
                  },
                ),
                title: const Text(
                  "All",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
               trailing: IconButton(
                 icon: const Icon(Icons.delete, color: Colors.white),
                 onPressed: () {
                   setState(() {
                     for (var index in selectedIndexes) {
                       FavorateList.listFav.removeAt(index - 1);
                     }
                   //  selectedIndexes = [];
                   });
                 },
                
                ),
              ),
              Expanded(
                  child: ListView.builder(
                    itemCount: FavorateList.listFav.length,
                    itemBuilder: (context, index) {
                   //   final movie = widget.listMovies[index];
                   final movie = FavorateList.listFav[index];
                      final isSelected = selectedIndexes.contains(index + 1);
              
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
                                        child: Image.asset(movie.poster!,
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
                                            movie.title!,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text(
                                            movie.classification!,
                                            style:
                                                const TextStyle(color: Colors.amber, fontSize: 15),
                                          ),
                                          const SizedBox(height: 8),
                                          RatingBarIndicator(
                                            rating: movie.rating!,
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
                                  Checkbox(
                                     shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  
                                    value: isSelected,
                                    activeColor: Colors.grey,
                                    onChanged: (value) {
                                      setState(() {
                                        if (value!) {
                                          selectedIndexes.add(index + 1);
                                        } else {
                                          selectedIndexes.remove(index + 1);
                                        }
                                      });
                                    },
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
                ),
              
               
            ],
          ),
        ),
      // )
    );
  }
}

_emptyList(){
  return Container(
     child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Center(child: Icon(Icons.list_sharp, color: Colors.amber[600],size: 110,),),
          
          const Text("YOUR LIST IS EMPTY!",
          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold) ,),
          const SizedBox(height: 10,),
           Text('''   Contrary to popular belief, Lorem
           lpsum is not simply rand
           ''',
          style: TextStyle(color: Colors.grey[400], fontSize: 15,) ,)
      ],
     ),
  );
}



