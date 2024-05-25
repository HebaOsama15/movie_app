import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';
import 'package:movie_ui/core/componunts/textFieldtype1.dart';



class PayMethod extends StatelessWidget {
  String? titleAppBar = "PAYMENT METHOD";
   PayMethod({ Key? key , this.titleAppBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF1E1F22),
      appBar: AppBar(
        backgroundColor:    const Color(0xFF1E1F22).withOpacity(0.4) ,
        leading: IconButton(
    icon:  
    const Icon(Icons.arrow_back ,color: kDeepYellow,),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
        title: const Text("PAYMENT METHOD",style: TextStyle(fontSize: 17),),
      ),
      body:
          SingleChildScrollView(
            child: SizedBox(
              height: 680,
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                Container(
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          opacity: 0.5,
                          image: AssetImage("assets/images/backgroung.jpg"),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                     Container(
                      height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      stops: const [0.1, 0.9],
                    begin: Alignment.topCenter, end: Alignment.bottomCenter,
                    colors: [const Color(0xFF1E1F22).withOpacity(0.5),
                    const Color(0xFF1E1F22)
                    ])
                  ),
                ),
             ]),
            
              Container(
                  height: 280,
                  margin: const EdgeInsets.only(left: 25, right: 25,bottom: 5),
                  child: Column(
                    children: [
                      //بتفاهم معه بعدين
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [   
                      //      //image visa logo
                      //   ],
                      // ),
                      TextFieldType1(title: "Card Number"),
                      const SizedBox(height: 15,),
                      Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  //_selectTaskDate(context)
                   Expanded(child: TextFieldType1( title:"Expiry Data")),
                  const SizedBox(width: 10),
                  Expanded(child: TextFieldType1( title:"CVV/CVC")),
                ],
                      ),
                      Container(
            
                        height: 50,
                        width: 500,
                        margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                              child:
                                  const Text("PAY NOW", 
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: kDeepYellow,
                              ),),
                            onPressed: () {
                                Navigator.pushNamed(context, "/categor",);
                            },  
                          ),
                    ),
                      
                     
              
                    ],
                  ),
                ),
              
            ],
                  ),
                ),
         )
          );

      
 //   );
    
  }
  // void _selectTaskDate(BuildContext context) async {
  // final DateTime? selectedDate = await showDatePicker(
  //   context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime.now(),
  //     lastDate: DateTime(2100),
  
  // );
  // if (selectedDate != null) {
  //  String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
  //   setState(() {
  //     TaskDate.text = formattedDate;
  //   });
  // } else {
  //   setState(() {
  //     TaskDate.text = DateFormat('yyyy-MM-dd').format(DateTime.now());
  //   });
  // }
//}
}




  
