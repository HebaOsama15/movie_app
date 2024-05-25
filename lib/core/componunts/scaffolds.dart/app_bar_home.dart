import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';
import 'package:movie_ui/core/componunts/profile_image.dart';
import 'package:movie_ui/features/models/movie_model.dart';



PreferredSizeWidget appBarHome(List<Movie> list){
  List<String> name = ["TRENDING", "NEWEST", "FOR YOU", "POPULAR"];
  return AppBar(
             flexibleSpace: _flexibleSpaceAppbar(),
             toolbarHeight: 100,
          backgroundColor: const Color(0xFF1E1F22),
          // leading: Drawer(),
         leading: _leadibing(),
    titleSpacing: 0,
    elevation: 0,
    
          title: _titleAppbar(name),
  
          actions:  [ 
            Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: ImageProfile(size: 20)
          )
          ],
          bottom: _caroselslider(list)
           
          );

}

PreferredSize _caroselslider(List<Movie> list) {
  return PreferredSize(
          preferredSize:  const Size.fromHeight(100.0),
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            child: CarouselSlider(
        options: CarouselOptions(autoPlay: true, height: 150,autoPlayInterval:   const Duration(seconds: 2)),
        items: [
            //movieController.moveis.length
             for (var i = 0; i < list.length; i++) 
         // movieController.moveis.isEmpty? 
            list.isEmpty?
            Container(color: kYellow, height: 15, width: 100,):
             
             ClipRRect( 
              borderRadius: BorderRadius.circular(8.0),
             child: 
            //  movieController.moveis[i].poster!
             Image.asset( list[i].poster!, fit: BoxFit.cover, width: 290,)
             )
       
            ]
      
      ),
          )
          
        );
}

Row _titleAppbar(List<String> name) {
  return Row( 
            children: 
              List.generate(name.length, (index) {
                 return
                 Row(
                  children: [
                    Text("${name[index]}\t\t",
                        style: const TextStyle(
                          fontSize: 13,
                        )),
                  ],
                 );
            } )
           
           );
}

Builder _leadibing() {
  return Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  );
}

Container _flexibleSpaceAppbar() {
  return Container(
                    height: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        opacity: 0.3,
                        image: AssetImage("assets/images/backgroung.jpg"),
                        fit: BoxFit.fill
                      )
                    ),
                  );
}



