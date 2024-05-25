import 'package:flutter/material.dart';
import 'package:movie_ui/core/componunts/intro_widet/account.dart';

class SingInAccowt extends StatelessWidget {
  const SingInAccowt({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Account(appBarTitle:"SIGN IN TO YOUR ACCOUNT",
      bottonText: "SIGN IN",
      buttonNavi: "/navi",
      isSignIn: true,);
  }
}