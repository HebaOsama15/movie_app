import 'package:flutter/material.dart';

class SubscribeNow extends StatelessWidget {
  const SubscribeNow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
                backgroundColor: Colors.amber[600],
                               shape: const RoundedRectangleBorder(
                                 borderRadius: BorderRadius.all(Radius.circular(20))
                               ),
               content: Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                    SizedBox(
                      height: 80,width: 80,
                      child: Image.asset("assets/images/theater (1).png",)),
                const   Padding(
                     padding: const EdgeInsets.only(top: 10, bottom: 25),
                     child: const Text("Subscribe Now to access\npremium content",
                     textAlign: TextAlign.center,
                     style: TextStyle(color: Colors.black),),
                   ),
                   ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[850],
                    ),
                    onPressed: (){Navigator.pushNamed(context, '/subsc_plane1');},
                    child: const Text("SUBSCRIBE NOW"))
                   ],
                 ),
               ),
              
               
             );
  }
}