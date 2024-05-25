import 'package:flutter/material.dart';
import 'package:movie_ui/core/componunts/intro_widet/account.dart';


class CreateAnAccount extends StatelessWidget {
   const CreateAnAccount({ Key? key }) : super(key: key);
   

  @override
  Widget build(BuildContext context) {
    return 
      Account(appBarTitle:"CREATE AN ACCOUNT",
      bottonText: "CREATE AN ACCOUNT",
      buttonNavi: "/ver_code",isSignIn: false,);
  }
}