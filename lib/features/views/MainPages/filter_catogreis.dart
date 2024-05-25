import 'package:flutter/material.dart';
import 'package:movie_ui/core/componunts/main_pages_widgets/watch_list_widget.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar.dart';
import 'package:movie_ui/features/views/MainPages/category_video.dart';

import '../../controller/movie_controller.dart';
import '../../models/movie_model.dart';

class FilterCategory extends StatefulWidget {
  const FilterCategory({ Key? key }) : super(key: key);

  @override
  State<FilterCategory> createState() => _FilterCategoryState();
}

class _FilterCategoryState extends State<FilterCategory> {
   MovieController movieController  = MovieController();
   List<Movie>listMovies = [];
   @override
  void initState() {
   super.initState();
   listMovies = movieController.getAllMovies();
   //listSerial = serialController.getAllSerials();
 }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBarMovi("CATEGORY", context, false),
        body: SingleChildScrollView(
          child: Container(
            margin:const EdgeInsets.only(top: 15, right: 15, left: 10) ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryVideo(),
                const Divider(thickness: 1,),
                SizedBox(
                   width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.height,
                  child: WatchListWidget())
              ],
             
            ),
          ),
        ),
      ),
    );
  }
}