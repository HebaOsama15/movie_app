import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';

class ContenueButton extends StatelessWidget {
late String navigator, text ;  
ContenueButton({required this.navigator, required this.text});
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: (){ Navigator.pushNamed(context, navigator);},
                   child: Text(text,style: const TextStyle(color: kDeepYellow),
                   )),
                   const SizedBox(height: 10,),
               const Text("By signing up you agree to out Privacy", ),
               TextButton(onPressed: (){}, child: const Text("Policy and Terms" ,style: TextStyle(color: kDeepYellow), ),)
              ],
            ));
  }
}