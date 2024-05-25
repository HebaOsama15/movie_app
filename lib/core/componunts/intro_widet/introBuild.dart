import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/image_background_scaffold.dart';


class IntroBuild extends StatelessWidget {
  late String image, title, subtitle;
   IntroBuild({ Key? key ,required this.image, required this.title, required this.subtitle}) : super(key: key);
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1F22),
      body: 
      ImageScaffoldBackground(widget:
      
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const Spacer(),
              _image(image),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(title,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20,),),
              ),
               Text(subtitle,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey[600],fontFamily: ""),),
              const SizedBox(height: 50,),
            ],
        )
        ) ,
      );
  }
}
SizedBox _image(String image) {
    return SizedBox(
              height: 60,width: 80,
              child: Stack(
                clipBehavior: Clip.none,
                children:
                 [Image.asset(image),
                 Positioned(
                  left: 40, bottom: 35,
                   child: Container(
                    height: 30,width: 30,
                    decoration: BoxDecoration(
                      color: kYellow.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15)
                    ),
                   ),
                 )
                 ]),);
  }