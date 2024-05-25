import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';

class ContanerSubscrip extends StatelessWidget {
  // const ContanerSubscrip({ Key? key }) : super(key: key);
  double? width;
  double? hight;
  ContanerSubscrip({this.hight, this.width});
  List<String> name = ["BASIC", "STANDARD", "PREMIUM"];
  List<String> images = []; 
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        _subucribeHeader(context),
        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                      List.generate(3, (index) => Container(
                        margin:const EdgeInsets.only(top: 20, bottom: 20),
                        width:width,
                        // MediaQuery.of(context).size.width / 3 - 15,
                        height: hight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: index == 1 ? kDeepYellow : Colors.grey[800]!.withOpacity(0.6),
                        
                        ),
                        child: Center(child: Text(name[index],
                        
                         style:index == 1 ?
                         Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black)
                        :Theme.of(context).textTheme.titleMedium)),
                      )),
                ),
      ],
    );
  }
}

ListTile _subucribeHeader(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
            title:Text("CHOOSE THE PLANE THAT'S\nRIGHT FOR YOU",
            style:Theme.of(context).textTheme.titleMedium, ),
            subtitle: const Text("Downgrage or upgrade at any time"),
            trailing: TextButton(onPressed: (){}, child: Text('Custom your plan',
            style:Theme.of(context).textTheme.titleSmall!.copyWith(color:kDeepYellow),),),
          );
  }