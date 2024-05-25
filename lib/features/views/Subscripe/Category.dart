import 'package:flutter/material.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar.dart';

import '../../../core/colors/colors.dart';

class Category extends StatefulWidget {
   const Category({ Key? key }) : super(key: key);
  
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
 List< Map<String,dynamic>>list = [
  {'image':'assets/images/Visa.svg.png' , 'title':"Visa"},
  {'image':"assets/images/Mastercard.png" , 'title':"Master card"},
  {'image': 'assets/images/Paypal2.png', 'title':'Paypal'},
 ];
 bool isExpandedd = false;
 int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMovi("CATEGORY", context, false),
      body:Container(
        margin: const EdgeInsets.only(top: 40, right: 10, left: 10),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection:Axis.horizontal ,
                    itemCount:list.length,
                    itemBuilder: ((context, index) {
                      final item = list[index]; 
                    return  InkWell(
                      onTap: () {
                                    //  isSelected[index] =true;
                    isSelected = index;
                    
                    setState(() {
                      
                    });
                                    },
                      child: Opacity(
                        opacity:isSelected == index?1: 0.5 ,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                         height: 100,
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: 100 ,
                                   width: MediaQuery.of(context).size.width /2.5 ,
                                   //
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white ,
                                    
                                    ),
                                    child: Image.asset(item['image']),
                                  ),
                                  isSelected == index?
                                  
                                  CircleAvatar(
                          backgroundColor: kDeepYellow,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                             
                            ),
                            child: const Icon(Icons.check),
                          ),
                          radius: 20,
                        ):Container()
                                ],
                              ),
                               Padding(
                                padding: EdgeInsets.only(bottom: 40,top: 15),
                                child: Text(item['title']),
                              ),
                              //----------------------------------------------------
                              
                            ],
                          ),
                                        ),
                      ),
                    );
                  })),
                ),
                   ExpansionPanelList(
                                    expandedHeaderPadding: const EdgeInsets.all(0),
                                    expansionCallback:
                                        (int index, bool isExpanded) {
                                      isExpandedd = !isExpanded;
                                      setState(() {});
                                    },
                                    children: [
                                      ExpansionPanel(
                                        
                                        headerBuilder: (BuildContext context,
                                            bool isExpanded) {
                                          return const ListTile(
                                            title: Text(
                                              "Master Card")
                                              //  "Semester: ${list[index].seasons!} ${list[index].year!}"),
                                          );
                                        },
                                        body: Row(children: [
                                          SizedBox(height: 40,width: 40,
                                            child: Image.asset("assets/images/Mastercard.png")),
                                            const SizedBox(width: 10,),
                                          const Text("*************596")
                                        ],),
                                        isExpanded: isExpandedd,
                                      ),
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top:15.0),
                                    child: ElevatedButton(
                        onPressed: (){ Navigator.pushNamed(context, "/HomeScreen");},
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: const [
                            Icon(Icons.add_circle_outline_outlined, color: kDeepYellow,),
                            SizedBox(width:10,),
                             Text("ADD NEW CARD",style: TextStyle(color: kDeepYellow),
                             ),
                           ],
                         )),
                                  ),
               
                
              ],
              
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Total: \$589"),
                Padding(
                      padding: const EdgeInsets.only(top: 14, bottom: 30),
                      child: ElevatedButton(
                            onPressed: (){ Navigator.pushNamed(context, "/HomeScreen");},
                             child: const Text("PAY & CONFIRM",style: TextStyle(color: kDeepYellow),
                             )),
                    ),
              ],
            ),
          ],
        )
      ) ,
    );
  }
}