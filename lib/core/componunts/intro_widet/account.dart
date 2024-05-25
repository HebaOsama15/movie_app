import 'package:flutter/material.dart';
import 'package:movie_ui/core/componunts/intro_widet/intro_button.dart';
import 'package:movie_ui/core/componunts/my_text_feild.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/image_background_scaffold.dart';


import '../../colors/colors.dart';
import 'text_textButton.dart';

class Account extends StatelessWidget {
 late String appBarTitle, bottonText, buttonNavi;
 bool isSignIn = true;

 Account({required this.appBarTitle,
   required this.bottonText,
   required this.buttonNavi,
   required this.isSignIn});
 // List<List<String>>list = 
 List<String> listSign = ["Email","Password"];
 List<String> listCreate = ["Email","Password", "Re-Password"];
    
    //that things for creat account
    List<String>list = [];
   islistSign(List<String> list){
    
   }
  @override
  Widget build(BuildContext context) {
    //islistSign(list);
    if (isSignIn){
      
    list = listSign;
    }else { list = listCreate;}
    print(list);
    return Scaffold(
      backgroundColor: const Color(0xFF1E1F22),
      extendBodyBehindAppBar: true,
      appBar: AppBarMovi(appBarTitle, context, true),
      body:  SingleChildScrollView(
        child: ImageScaffoldBackground(widget:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100,),
            Column(
                        children: 
                        List.generate( list.length ,
                         (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                         
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: Column(
                          children: [
                            MyTextField(
                              label: list[index],
                              textInputType:index!=0? TextInputType.number:TextInputType.name,
                              textCapitalization: TextCapitalization.words,
                              regex:index !=0? '0-9': 'A-Za-z ',
                              obscureText: index !=0?true:false,
                              // lastItem: true,
                            ),
                            isSignIn && index !=0?
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [TextButton(onPressed: (){},
                              child: Text("Forgot your password?",style: Theme.of(context).textTheme.titleSmall!.copyWith(color:Colors.white),))],):Container()
                          ],
                        ),
                      ),
                         ],
                        ),)
                      ),
                      IntroButton(bottonText:bottonText,buttonNavi:buttonNavi),
                    !isSignIn?const Text("By signing up you agree to out Privacy", ): Container(),
                    !isSignIn? TextButton(onPressed: (){}, child: const Text("Policy and Terms" ,style: TextStyle(color: kDeepYellow), ),):Container(),
                     _signWithSocialMedia(),
                    
                      TextTextButton(text: !isSignIn?'Alredy have an account?':"Not a membar?",
                      textButton:!isSignIn?'Sign In':"Sign Up",navigator:!isSignIn? "/signin": "/create_account" ,),
          ]
                            )
                            ),
      ),
    );
    
  }

  
}

Padding _signWithSocialMedia() {
  List<String>list = ['assets/images/google-logo.png','assets/images/facebook.png','assets/images/Logo_Twitter.png'];
    return Padding(
                   padding: const EdgeInsets.symmetric(vertical: 40),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       const Text("Sign Up With Social media"),
                       Row(children: 
                        List.generate(3, (index) =>  Padding(
                          padding: EdgeInsets.only(right:10.0,top: 15),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: SizedBox(
                              height: 20,
                              child: Image.asset(list[index])
                            ),
                          ),
                        ))
                   ),
                     ],
                   ),
                 );
  }