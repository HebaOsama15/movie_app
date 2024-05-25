
import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';
import 'package:movie_ui/features/controller/favorateList.dart';
import 'package:movie_ui/features/controller/movie_controller.dart';
import 'package:movie_ui/features/controller/serial_controller.dart';
import 'package:movie_ui/features/models/movie_model.dart';
import 'package:movie_ui/features/models/player_info.dart';
import 'package:movie_ui/features/models/serial_model.dart';


class SerialListView extends StatefulWidget {
   List<Serial>? serials;
  // List<Season>? season;
   String? title;
   String? subtitle;
   bool? validateTXT = false;
   bool? validateSubTXT = false;
   // 
  //  this.season  
   SerialListView({  this.serials  ,  this.title, this.subtitle, required this.validateTXT, required this.validateSubTXT});

  @override
  State<SerialListView> createState() => _SerialListViewState();
}

class _SerialListViewState extends State<SerialListView> {
      
     SerialController serialController = SerialController();
    FavorateList fav = FavorateList();
    List<Serial> listSerials = [];
  @override
  void initState() {
    super.initState();
    listSerials = serialController.getAllSerials();
  }
  // @override
  // void initState() {
  //   super.initState();
    
  //  // listMovies = movieController.getAllMovies();
  //   print("list movi is $listMovies*****************************");
  // }
  @override
  Widget build(BuildContext context) {
    //  movieController.moveis;
    //   print(widget.movie);
    //   print(movieController.moveis);
    //   movieController.getAllMovies();
      
    return Column(
      children: [
    
        if (widget.validateSubTXT!) const Divider(thickness: 7,color: kBlack, ),
                     Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  if (widget.validateTXT!)
                  Text(
                    // "TRENDING IN VIMU",
                  widget.title!,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                  ),
                 if (widget.validateSubTXT!)
             Text(
                     // "SEE ALL",
                    widget.subtitle!,
                      style: const TextStyle(color: Colors.white),
                    ),
                ],
              ),
        SizedBox(
                   
                  height: 250,
                  child:ListView.builder(
    itemCount: listSerials.length,
    
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) {
        return Container(
          
          margin: const EdgeInsets.all(2),
          padding: const EdgeInsets.all(5),
          width: 150,
          child: Column(
            children: [
              InkWell(
                child: Container(
                  //ذا الكونتينر الي فيه العصده
                  height: 170, 
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          //movieController.moveis
                          listSerials[index].poster!,
                        // widget.movie![index].poster!,
                        ),
                        fit: BoxFit.cover),
                     ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: Colors.amberAccent[700],
                          ),
                          Text(
                           listSerials[index].rating!.toString(),
                         // widget.movie![index].rating!.toString(),
                            style: const TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                onTap: (){
                        Navigator.pushNamed(context, "/vidio",arguments:serialController.serials[index] );
                      },
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5,),
                         Text(
                          listSerials[index].title!,
                        // widget.movie![index].title!,
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                         // widget.movie![index].classification!,
                          listSerials[index].classification!,
                          style: TextStyle(color: Colors.amberAccent[700]),
                        ),
                      ],
                    ),
                    IconButton(onPressed: (){
                              setState(() {
                                if(listSerials[index].isLiked == false){
                              
                              //    FavorateList.addListFav(listSerials[index]);
                                 
                                }
                                listSerials[index].isLiked = !listSerials[index].isLiked!;
                             
                              });
              
              
                    }, icon: Icon(
                       listSerials[index].isLiked! ? 
                       Icons.favorite : Icons.favorite_outline,
                       color: Colors.white ,
                      
                    ))
                     
                  ],
                ),
                // arguments: listFav
                onTap: () => Navigator.pushNamed(context, "/watchList", ),
              ),
            ],
          ),
        );
    },
    ),
                ),
      ],
    ); 
  }
}