import 'package:flutter/material.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar.dart';
import 'package:movie_ui/core/componunts/sibscrib_widgets/contanerSubscribe.dart';
import 'package:movie_ui/core/componunts/sibscrib_widgets/contenueButton.dart';
import 'package:movie_ui/core/componunts/sibscrib_widgets/plan_info.dart';

class SubscriptionPlan2 extends StatelessWidget {
   SubscriptionPlan2({ Key? key }) : super(key: key);
  List<Map<String, dynamic>> info = [
      {"Monthly price" : "USD 256.99"},
      {"Multiple Devices" : true},
      {"Video Quility" : "Better"},
      {"Resolution" : "1080p"},
      {"Screens you can watch on at\nthe same time" : 4}
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBarMovi("SUBSCRIPTION PLAN", context, false),
      body: Container(
        margin: const EdgeInsets.only(top: 20, right: 10,left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          //  subucribeHeader(context),
            ContanerSubscrip(hight: 50 , width: MediaQuery.of(context).size.width / 3 - 15,),
            PlanInfo(listOfMap: info,),
            ContenueButton(navigator: "/custom_plan",text: "CONTINUE",),
            
          ],
        ),
      ),
    );
  }

}



 
 