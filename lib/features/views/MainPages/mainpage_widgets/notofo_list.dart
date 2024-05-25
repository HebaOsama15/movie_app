import 'package:flutter/material.dart';

class NotofoList extends StatelessWidget {
   String? title;
   NotofoList({this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!),
            const SizedBox(height: 15),
              

              Column(
                children: 
                 List.generate(3,((index) {
                return Container(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
            Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
          children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[800]!.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(4),),
                          child: const Icon( Icons.notifications_none_outlined,),
                      ),
                      const SizedBox(height: 30,)
                    ],
                  ),
                  const SizedBox(width: 15,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text("Single up deep line", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontFamily: "defult"),),
                     const Text("contrary to popular belief,Lorem lpsum is\nnot simply random text"),
                     const SizedBox(height: 10,),
                     const Text("11:50am")
                    ],
                  ),
                  
          ],
        ),
        Icon(Icons.more_vert_outlined,color: Colors.grey[400],size: 30,)
                ],
            ),
            Divider(color: Colors.grey[800],),
                ],
            ),
              );
                }
              ),
            ),
              )
           
             
          ],
        );
              }
  }
