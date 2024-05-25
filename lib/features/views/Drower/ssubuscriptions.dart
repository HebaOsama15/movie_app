import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar.dart';


class Subuscriptions extends StatefulWidget {
   const Subuscriptions({ Key? key }) : super(key: key);

  @override
  State<Subuscriptions> createState() => _SubuscriptionsState();
}

class _SubuscriptionsState extends State<Subuscriptions> {
  bool isPressed = false;
  List<Map<String,dynamic>>list = [{"Started on":"15may,2020"}
  ,{"Price":"560USD"},{"Access":"Unlimited"}];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMovi("MY SUBSCRIPTIONS", context, false),
      body: Container(
        margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: ((context, index) {
          return Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 10, bottom: 10,left: 10,),
            child: Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: kDeepYellow,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: const Center(child: Text("Active",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                          ),
                          Row(children: [
                            Switch(
                              activeColor: kDeepYellow,
                              value: isPressed, onChanged: (val){
                      isPressed = val;
                     
                      setState(() {
                        
                      });
                    }),
                    Text("Auto Renew",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white),),
                          ],),
                          TextButton(onPressed: (){}, child: Text("Change Plane",style:Theme.of(context).textTheme.titleSmall ,))
                        ],
                        
                      ),
                      Text("STANDARD PLAN", style:Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600) ,),
                      Padding(padding: const EdgeInsets.only(top: 5,bottom: 12),
                      child: Text("Subscription ID: 100394949",style: Theme.of(context).textTheme.titleMedium!.copyWith(fontFamily: "defult",fontWeight: FontWeight.w300)),),
                      const Divider(color: kBlack,thickness: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: 
                          
                            List.generate(list.length, (index) => Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(top: 10,bottom: 5),
                                  child: Text(list[index].keys.first,style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white)),
                                ),
                              Text(list[index].values.first,style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white,fontSize: 14)),
                              ],
                            )) 
                              
                            
                          ),
                        
                      

                    ],
                  ),
                )

              ),
            ),
          );
        }))
        ),
      
    );
  }
}