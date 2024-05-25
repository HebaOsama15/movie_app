import 'package:flutter/material.dart';


//yellow button
class IntroButton extends StatelessWidget {
  late String buttonNavi, bottonText;
  bool? isWhite;
   IntroButton({ Key? key ,required this.bottonText, required this.buttonNavi,this.isWhite = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                      margin: const EdgeInsets.only(bottom: 15, top: 25),
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(onPressed: (){Navigator.pushNamed(context, buttonNavi);},
                       child: Text(bottonText,style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                       style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all<Color>(isWhite == true?Colors.white: Colors.amber),)),
                    );
  }
}