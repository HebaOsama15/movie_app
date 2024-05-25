
import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';
import 'package:movie_ui/features/views/MainPages/home_screen.dart';
import 'package:movie_ui/features/views/MainPages/notification.dart';
import 'package:movie_ui/features/views/MainPages/wach_list.dart';


class Nani extends StatefulWidget {
    // final List<Movie> listMovies;
// required this.listMovies
   const Nani({Key? key}) : super(key: key);

  @override
  State<Nani> createState() => _NaniState();
}
class _NaniState extends State<Nani> {
  // WacthList(listMovies:widget.listMovies)
   int selectedScreenIndex=1;
  //  List<Movie> list = [];
  @override
  Widget build(BuildContext context) {
   

   List<Widget>screens=[
    // listMovies:list
    WacthList(),
    const HomeScreen(),
    Notifi(),
   ];
  //,WacthList(listMovies:widget.listMovies)
    return  Scaffold(
      body: screens[selectedScreenIndex],
         
      bottomNavigationBar: BottomNavigationBar(
        
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedScreenIndex,
          selectedItemColor: Colors.amber[700],
          backgroundColor: kBlack,
          
          onTap: (x){
            selectedScreenIndex=x;
            setState(() {

            });
          },
          items:  const [
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "notofication"),
        ],),
    );
    
      
      
        
    
  }
}
