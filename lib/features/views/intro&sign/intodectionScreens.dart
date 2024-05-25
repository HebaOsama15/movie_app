import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';
import 'package:movie_ui/core/componunts/intro_widet/introBuild.dart';
import 'package:movie_ui/features/views/intro&sign/last_intro_page.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatefulWidget {
  const Intro({ Key? key }) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  List<Map<String,dynamic>>data=[{
    "title": "WATCH ON ANY DEVICE" ,
    "subTitle":"Connect to usong your favorite\ndevices.",
    "image": "assets/images/logo1.png",
  },
  {"title": "UNLIMITED ENTERTAINMENT",
    "subTitle":"I'm an early bird and I'm a night owl\nso I'm wise and Ihave worms. ",
    "image": "assets/images/cinema (1).png",
    },
    {"title": "NO ANNOTING CONTRACTS",
    "subTitle":"I'm an early bird and I'm a night owl\nso I'm wise and Ihave worms. ",
    "image": "assets/images/video.png",
    }];

  final controller = PageController();
 bool isLastPage = false;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1F22),
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          onPageChanged: (index){
    setState(() {
      isLastPage = index == data.length ;
    });},
          children:[ 
             
          ...List.generate(data.length, (index) {
            final item = data[index];
            return IntroBuild(
              image: item["image"],
              title: item["title"],
              subtitle: item["subTitle"],
            );
             
          }
          
        ),
         const lastIntroPage() 
       ]
      ),
      ),
      
      bottomSheet:
      // TextButton(
      //   style: TextButton.styleFrom(
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(10)
      //     ),
      //     primary: Colors.white,
      //     backgroundColor: Colors.teal.shade700,
      //     minimumSize: Size.fromHeight(80)
      //   ),
      //   onPressed: ()async{
      //     // final prefs = await SharedPreferences.getInstance();
      //     // prefs.setBool('showHome', true);
      //     Navigator.pushNamed(context, '/create_account');
      //   },
      //    child: Text("Get Started",
      //    style: TextStyle(fontSize: 24),))
        //  : Container(
        // 
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     TextButton(onPressed: ()=>controller.jumpToPage(3)
        //     , child: Text("Skip")),
        //     Center(
        //       child:
        
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                height:isLastPage?0: 150,
                color: const Color(0xFF1E1F22),
                child:isLastPage? Container():
                SmoothPageIndicator(
                    controller :controller,
                    count: 3,
                    effect:const  WormEffect(
                      dotWidth: 10,
                      dotHeight: 10,
                      spacing: 10,
                      dotColor: Colors.white60,
                      activeDotColor: kDeepYellow
                    ),
                    onDotClicked: (index) => controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                       curve: Curves.easeIn),
                   ),
              )
      //       ),
      //       TextButton(onPressed: ()=> controller.nextPage(duration: Duration(milliseconds: 500),
      //        curve: Curves.easeInOut), child: Text("Next")),
      //     ],
      //   ),
      // ),
    );
    
  }
}