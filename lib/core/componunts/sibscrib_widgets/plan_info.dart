import 'package:flutter/material.dart';

class PlanInfo extends StatelessWidget {
 late List<Map<String,dynamic> >listOfMap;
 PlanInfo({required this.listOfMap});
  @override
  Widget build(BuildContext context) {
    return Column(
            children: 
             List.generate(listOfMap.length, (index) { 
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(listOfMap[index].keys.first),
                      Text(listOfMap[index].values.first.toString()),
                    ],
                  ),
                   Padding(
                     padding: const EdgeInsets.only(top: 10,bottom: 10),
                     child: Divider(color: Colors.grey.withOpacity(.5),),
                   ),
                ],
               
              );
              
 } ),
              
           );
  }
}