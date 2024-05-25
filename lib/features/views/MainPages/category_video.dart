import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';

class CategoryVideo extends StatelessWidget {
   CategoryVideo({
    Key? key,
  }) : super(key: key);
 Map<Icon, String> mapp = {const Icon(Icons.movie_filter_outlined,):"MOVIE",
                          const Icon(Icons.amp_stories_sharp,):"SERIES",
                          const Icon(Icons.temple_hindu_sharp,):"KIDS CONTENT",
                          const Icon(Icons.local_atm_outlined,):"DRAMA"
                          };
  @override
  Widget build(BuildContext context) {

    return
    SizedBox(
              height: 80,
              child: AppBar(
                
                bottom: TabBar(
                  labelColor: kDeepYellow, 
                  unselectedLabelColor: kDeepYellow.withOpacity(0.3),
                  indicatorColor: kDeepYellow,
                  tabs: [
                    for (var item in mapp.entries) 
                    Tab(
                      icon: item.key,
                      text: item.value,
                    ),
                  ],
                ),
              ),
            );

  }
}
