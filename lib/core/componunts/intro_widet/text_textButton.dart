import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';

class TextTextButton extends StatelessWidget {
  late String text, textButton; 
  String? pressed, navigator;
  TextTextButton({required this.text,required this.textButton, this.pressed , this.navigator});
  @override
  Widget build(BuildContext context) {
    return
    TextButton(
      
      onPressed: () {Navigator.pushNamed(context, navigator!);},
      child: Text.rich(
                       TextSpan(
                         text: "$text \t\t",
                         style: const TextStyle(
                          color: Colors.white
                        ),
                         children: [
                           TextSpan(
                             text: textButton,
                             style: const TextStyle(
                               color: kDeepYellow,
                             ),
                           ),
                             ],
                           )
                            ,),
    );
  }
}