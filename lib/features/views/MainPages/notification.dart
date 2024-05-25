import 'package:flutter/material.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar.dart';
import 'package:movie_ui/features/views/MainPages/mainpage_widgets/notofo_list.dart';


class Notifi extends StatelessWidget {
  List<String> days = ["Today","Yesterday","Befor A Week",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMovi("NOTIFICATION", context, false),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20, right: 15, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: 
            List.generate(days.length, ((index) {
              return Column(
                children: [
                  NotofoList(title: days[index]),
                  const SizedBox(height: 40,),
                ],
              );
              
            }))
             //navigation bar===============================================================
             
              
            
          ),
        ),
      ),
    );
  }
}