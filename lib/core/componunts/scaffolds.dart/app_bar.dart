
import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';



PreferredSizeWidget AppBarMovi(String titleAppBar, BuildContext context, bool isOpacity){
  return AppBar(
     
       backgroundColor: isOpacity? const Color(0xFF1E1F22).withOpacity(0.001):null,
      // const Color(0xFF1E1F22),
      title: Text(titleAppBar,
       style:Theme.of(context).textTheme.titleLarge,),
      // TextStyle(fontSize: 17)),
      leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: kDeepYellow),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom:!isOpacity? const PreferredSize(
          preferredSize:  Size.fromHeight(15.0),
          
          child: Divider(thickness: 8,color:Color(0xFF1E1F22) ,)):null,
    );
}

