import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar.dart';
import 'package:movie_ui/core/componunts/sibscrib_widgets/contanerSubscribe.dart';

import '../../../core/componunts/sibscrib_widgets/contenueButton.dart';



class SubscriptionPlan1 extends StatelessWidget {
   SubscriptionPlan1({ Key? key }) : super(key: key);
 // List<Map<String, dynamic>>list = [
  
  List<Map<String, dynamic>> basicList =  [{"Monthly": "USD256.99"},{"Multydevices": "No"},{"Cancelanytime" : "Good"},{"Resolution":"480p"}];
  List<Map<String, dynamic>> standardList =  [{"Monthly": "USD256.99"},{"Multiple devices": 03},{"Cancel at any time" : "Better"},{"Resolution":"1080p"}];
   List<Map<String, dynamic>> premiumList = [{"Monthly": "USD256.99"},{"Multiple devices": 06},{"Cancel at any time" : "Best"},{"Resolution":"4k+HDR"}];

    // {"Monthly": "USD256.99", "Multiple devices": "No", "Cancel at any time" : "Good","Resolution":"480p"},
    // {"Monthly": "USD256.99","Multiple devices": 03,"Cancel at any time" : "Better","Resolution":"1080p"},
    // {"Monthly": "USD256.99","Multiple devices": 06,"Cancel at any time" : "Best","Resolution":"4k+HDR"}
 //];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMovi("SUBSCRIPTION PLAN", context, false),
      body:SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
          child:Column(
         //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            //  subucribeHeader(context),
              ContanerSubscrip(hight: 80 , width: MediaQuery.of(context).size.width / 3 - 15,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Expanded(
                  child: Row(
                    children: 
                    List.generate(3,(i)=>
                    //big column
                      Column(
                       
                       children:
                       List.generate(basicList.length, (index){ 
                          //small column
                             return Column(
                         children: [
                              Text(basicList[index].keys.first,
                           style: Theme.of(context).textTheme.titleMedium!.copyWith(fontFamily: "",fontWeight: FontWeight.normal),),
                           Padding(
                             padding: const EdgeInsets.only(top: 10,bottom: 15),
                             // basicList[index].values.toList()[index].toString()
                             child: Text(basicList[index].values.first,
                             style: Theme.of(context).textTheme.titleMedium!.copyWith(fontFamily: "",fontWeight: FontWeight.normal, color: kDeepYellow),),
                           ),
                           const Divider(color: Colors.white,thickness: 5,)
                         ],
                       );
                         //   } )
                         // );
                         
                         })
                         
                      ),
                      
                      )
                      
                   //  ],
                   
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0, bottom: 30),
                child: ContenueButton(navigator: "/subsc_plane2",text: "CONTENUE",)
              ),
            ],
          )
        ),
      ) ,
    );
  }
}

