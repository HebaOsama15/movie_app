import 'package:flutter/material.dart';
import 'package:movie_ui/core/componunts/intro_widet/intro_button.dart';

class lastIntroPage extends StatelessWidget {
  const lastIntroPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1F22),
      body: Container(
        margin: const EdgeInsets.only(top: 40, right: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Spacer(),
            Image.asset("assets/images/cinema.png"),
             Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text("START BY CREATING AN ACCOUNT.",
                textAlign: TextAlign.center
                ,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 23,),),
              ),
               Text("I'm an early bird and I'm a night owl\nso I'm wise and Ihave worms.",
               textAlign: TextAlign.center,
               style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey[600],fontFamily: ""),),
               const SizedBox(height: 25,),
               IntroButton(bottonText: "CREATE AN ACCOUNT",buttonNavi: '/create_account',),
               IntroButton(bottonText:"SIGN IN" ,buttonNavi: '/signin',isWhite: true,)
          ],
        ),
      ),
    );
  }
}