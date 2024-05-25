import 'package:flutter/material.dart';

class ImageScaffoldBackground extends StatelessWidget {
late Widget widget;
ImageScaffoldBackground({required this.widget});
  @override
  Widget build(BuildContext context) {
    return Stack(
                alignment: Alignment.topCenter,
                children: [
                 
               
                Container(
                      height: 350,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          opacity: 0.5,
                          image: AssetImage("assets/images/backgroung.jpg"),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                     Container(
                      height: 350,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      stops: const [0.3, 0.8],
                    begin: Alignment.topCenter, end: Alignment.bottomCenter,
                    colors: [const Color(0xFF1E1F22).withOpacity(0.5),
                    const Color(0xFF1E1F22)
                    ])
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width ,
                  margin: const EdgeInsets.only(top: 50,bottom: 20,left: 30,right: 30),
                  child: widget,
                  )
             ]);
  }
}
