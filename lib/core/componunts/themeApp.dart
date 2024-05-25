import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';

ThemeData darkh = ThemeData(
  
brightness: Brightness.dark,
// primaryColor: const Color(0xFF26272B),
 scaffoldBackgroundColor: const  Color(0xFF26272B),
 useMaterial3: true,

//icons
iconTheme:const IconThemeData(
  color:Color.fromRGBO(255, 160, 0, 1)
),

//text
textTheme:const TextTheme(
                    titleLarge: TextStyle(
                    fontFamily: "Regular",
                    fontWeight: FontWeight.bold,
                   // letterSpacing: 1,
                   wordSpacing: 0,
                    fontSize: 18,
                    color: Colors.white
                  ),
                   titleMedium: TextStyle(
                    fontFamily: "Regular",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white
                  ),
                  titleSmall: TextStyle(
                    //fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: kDeepYellow
                  )),


appBarTheme:const AppBarTheme(
  elevation: 0,
  backgroundColor: kBlack,
  // Color(0xFF1E1F22),
  // shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.vertical(
  //           bottom: Radius.circular(30),
  //         ),
          
//) 

   ),

   elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
      primary: Colors.grey[800]!.withOpacity(0.6),
      shape:  RoundedRectangleBorder(
      borderRadius:BorderRadius.circular(5),
       ),
      textStyle:const TextStyle(
         fontFamily: "Regular",
         fontWeight: FontWeight.bold,
         fontSize: 17,), 
      minimumSize: const Size(320 , 50), 
                              
    ), ),

   // radioTheme: RadioThemeData(
      // : RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(8), // Set the desired border radius
      // ),
      cardTheme: CardTheme(
        color: Colors.grey[800]!.withOpacity(0.6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.only(top: 15, bottom: 15)
      ),
      
      textButtonTheme: TextButtonThemeData(style:TextButton.styleFrom(
        padding: EdgeInsets.zero,
         minimumSize: Size(50, 30),
         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
         textStyle: TextStyle(
          color: kDeepYellow
         )
      ),),
   

       

      
    );