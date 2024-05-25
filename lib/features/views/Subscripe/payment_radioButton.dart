import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';

class PatmentRadioButton extends StatefulWidget {
  @override
  State<PatmentRadioButton> createState() => _PatmentRadioButtonState();
}

class _PatmentRadioButtonState extends State<PatmentRadioButton> {
  List<Map<String, dynamic>> payChoice = [
      {"text" : "Mastercard", "subText":"Pay from mastercard account\nusing mastercard payment geteway" , "image":"assets/images/Mastercard.png" },
      {"text" :"Visa Card" , "subText":"Pay from mastercard account\nusing mastercard payment geteway" , "image": "assets/images/paypal1.png"},
      {"text" : "Paypal", "subText": "Pay from mastercard account\nusing mastercard payment geteway", "image": "assets/images/Visa.svg.png"},
    ];
   late int selectedOption;
  @override
  void initState() {
    super.initState();
    selectedOption = 0; 
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedOption = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        
      children: 
      List.generate(3, (index){
      final optionValue = index + 1;
      final item = payChoice[index];
      return Column(
         children: [
           Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                         // 
                          children: [
                            Radio(
                              
                              activeColor: kDeepYellow,
                              value: optionValue,
                              groupValue: selectedOption,
                              onChanged: (val) {
                                setSelectedRadio(val as int);
                              },
                            ), 
                            
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(item["text"],
                                    style:TextStyle(fontWeight: FontWeight.w500)),
                                    Text(item["subText"],
                                    style:TextStyle(color: Colors.grey[600]))
                                  ],
                                ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                  width: 30, height: 20,
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Image.asset(item["image"], fit: BoxFit.fill,),
                 ),
                  
                          ],
                        )
                      ],
                    ),
                     Padding(
              padding: const EdgeInsets.only(top:10, bottom: 10),
              child: Divider(color: Colors.grey[700],),
            )
         ],
       );
      }
      ),
       
               
      
    );
  }
}