import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_ui/core/componunts/intro_widet/text_textButton.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/image_background_scaffold.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1F22),
      extendBodyBehindAppBar: true,
      appBar: AppBarMovi("VERIFICATION CODE", context, true),
      body:  ImageScaffoldBackground(
        widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(

            children: [
            Row(
              children: 
                
                    List.generate(4,(index)=>

            _verifiTextFeild(context),

            )
            ),
            
            
          Padding(
            padding: const EdgeInsets.only(top: 40,bottom: 15),
            child: TextTextButton(text: "Didn't receive it?",textButton: "Click here",navigator: "/signin",),
          )

            ],
          )
        ],
      ))
    );
  }

 
}
 Container _verifiTextFeild(BuildContext context) {
    return Container(
            height: 60,
            width: 50,
            margin: const EdgeInsets.only(left: 8,right: 25),
            child: TextFormField(
              onSaved: (pin1){},
              onChanged: ((value) {
                if (value.length ==1) {
                  FocusScope.of(context).nextFocus();
                }
              }),
              decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              ),
              style:Theme.of(context).textTheme.headline6 ,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],

            ),
          );
  }