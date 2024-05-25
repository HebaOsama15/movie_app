import 'package:flutter/material.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar.dart';
import 'package:movie_ui/core/componunts/sibscrib_widgets/contenueButton.dart';
import 'package:movie_ui/core/componunts/sibscrib_widgets/custom_choise.dart';


class CustomPlan extends StatefulWidget {
  const CustomPlan({Key? key}) : super(key: key);

  @override
  State<CustomPlan> createState() => _CustomPlanState();
}

class _CustomPlanState extends State<CustomPlan> {
 List<String> duration= ["07days", "15days","01month","01year"];
  List<String> vidoeQuality = ["Good","Better", "Best"];
  List<String> cancel = ["Yas","No"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMovi(
       "CUSTOM PLAN",context, false
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
        child: Column(
          children: [
           CustomChoise(title:"DURATION",list: duration, isDropDown: false),
           CustomChoise(title:"VIDEO QUALITY",list: vidoeQuality, isDropDown: false),
           CustomChoise(title:"DEVICE", isDropDown: true),
           CustomChoise(title:"CANCEL AT ANY TIME",list: cancel, isDropDown: false),

           const SizedBox(height: 50,),
           ContenueButton(navigator: "/pay_cohoise",text: "CONTINUE \$89",),
          ],
        ),
      ),
    );
  }
}