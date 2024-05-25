import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar.dart';
import 'package:movie_ui/core/componunts/sibscrib_widgets/plan_info.dart';

import 'payment_radioButton.dart';

class PaymentMetodChoise extends StatefulWidget {
  const PaymentMetodChoise({ Key? key }) : super(key: key);

  @override
  State<PaymentMetodChoise> createState() => _paymentMetodChoiseState();
}

class _paymentMetodChoiseState extends State<PaymentMetodChoise> {
  

  List<Map<String, dynamic>> payInfo = [
      {"Time duration" : "15 days"},
      {"Video qulity" : "Best"},
      {"Device" : 3},
      {"Cancel at time" : "yes"},
    ];

    
      
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBarMovi("PAYMENT METHOD", context, false),
      body: Container(
        margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
        child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CHOOSE YOUR PAYMENT METHOD",
                style: Theme.of(context).textTheme.titleMedium,),
                const SizedBox(height: 25,),
                PlanInfo(listOfMap: payInfo),
                  
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  
                  child: PatmentRadioButton(),
                ),
                 Center(
                   child: ElevatedButton(
                    onPressed: (){ Navigator.pushNamed(context, "/pay");},
                     child: const Text("CONTINUE \$89",style: TextStyle(color: kDeepYellow),
                     )),
                 ),
              ],
            ),
      ),
    );
  }
}