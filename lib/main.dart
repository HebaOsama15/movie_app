import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_ui/core/componunts/themeApp.dart';

import 'route_mange.dart';
void main() {
  // final prefs = await SharedPreferences
  //  .getInstance();
  // final showHome = prefs.getBool('showHome')?? false;
  //showHome: showHome
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  //final bool showHome;
  // required this.showHome
   const MyApp({Key? key, }) : super(key: key);
  //  RouteManager routte = RouteManager(showHome: false);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(255, 171, 0, 1),
      statusBarBrightness: Brightness.dark,
    ));
    
    return MaterialApp(
     
      theme: darkh,
      debugShowCheckedModeBanner: false,
      // home: showHome ?  CreateAnAccount() : Intro(),
     initialRoute: '/',
      
     onGenerateRoute: 
     RouteManager
     .generateRoute, 
         );
  }
}
