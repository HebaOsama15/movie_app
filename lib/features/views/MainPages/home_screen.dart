
import 'package:flutter/material.dart';
import 'package:movie_ui/core/componunts/main_pages_widgets/list_view_movies.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar_home.dart';
import 'package:movie_ui/features/controller/movie_controller.dart';
import 'package:movie_ui/features/controller/serial_controller.dart';
import 'package:movie_ui/features/models/movie_model.dart';
import 'package:movie_ui/features/models/serial_model.dart';
import 'package:movie_ui/features/views/Drower/widget/drawer.dart';
import 'package:movie_ui/features/views/MainPages/category_video.dart';

import '../../../core/componunts/main_pages_widgets/list_view_serials.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   MovieController movieController  = MovieController();
   SerialController serialController = SerialController();
  List<Movie>listMovies = [];
   List<Serial>listSerial = [];
   @override
  void initState() {
   super.initState();
   listMovies = movieController.getAllMovies();
   listSerial = serialController.getAllSerials();
 }
  @override
  Widget build(BuildContext context) {
    
 // movieController.getAllMovies();
        print(" the controller is: ${movieController.moveis}==================");
        print(listMovies);
        print(listSerial);
       
    return 
      DefaultTabController(
        length: 4,
        child: Scaffold(
          // drawer:  
          appBar: appBarHome(movieController.moveis),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only( left: 10, right: 10), 
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),)
              ),
              child: Column(
                children: [
                  InkWell(child: CategoryVideo(),onTap: (){Navigator.pushNamed(context, '/filter_category');},),
                  const SizedBox(height: 15,),
                 
            moviListView( movie: listMovies, title: "TRENDING IN VIMU", subtitle:"SEE ALL" ,validateTXT: true, validateSubTXT: true,),
           
            SerialListView(serials: listSerial, title:"NEWEST" ,subtitle: "SEE ALL", validateTXT: true, validateSubTXT: true,),
            
                ],
                
              ),
            ),
          ),                                                                                       
        ),
      );
  }
}

