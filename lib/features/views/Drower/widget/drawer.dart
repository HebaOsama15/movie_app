
import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';
import 'package:movie_ui/core/componunts/profile_image.dart';
import 'package:movie_ui/features/views/Subscripe/SubscribeNow.dart';

import 'package:shared_preferences/shared_preferences.dart';


class DrawerWidget extends StatelessWidget {
  const DrawerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(

          children: [

             _drowerHeader(context),
            ListTile(
              leading: const Icon(Icons.home ,),
              title: const Text("My Account"),
              onTap: () {Navigator.pushNamed(context, '/edit_profile');},
            ),
            ListTile(
              leading: const Icon(Icons.account_box,color: kDeepYellow,),
              title: const Text("About Us"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.grid_3x3_outlined,color: kDeepYellow,),
              title: const Text("My Subscription"),
              onTap: () {Navigator.pushNamed(context, "/subuscriptions");},
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail,color: kDeepYellow,),
              title: const Text("Support"),
              onTap: () {
                 Navigator.pop(context);
                showDialog(
                        context: context,
                        builder: (ctx) {
                          return
                          const SubscribeNow();
                          
                        });
              },
            ),
            ListTile(
              leading: const Icon(Icons.star,color: kDeepYellow,),
              title: const Text("Rate Us"),
              onTap: () {Navigator.pushNamed(context, "/notification");},
            ),
            ListTile(
              leading: const Icon(Icons.settings_power_outlined,color: kDeepYellow,),
              title: const Text("Sign Out"),
              onTap: () async{
                
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', false);
                Navigator.pushNamed(context, '/intro');
              },
            )
          ],
        );
  }

 
}

 UserAccountsDrawerHeader _drowerHeader(BuildContext context) {
    return UserAccountsDrawerHeader(
            otherAccountsPictures:[
              TextButton(onPressed: 
              () {Navigator.of(context).pop();},
               child: const
                Text("X",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),),
                )
              ],
           
        accountEmail:const Text(''),
        accountName: Row(
          children: <Widget>[
            InkWell(
              onTap: () {Navigator.pushNamed(context, '/edit_profile');},
              child: SizedBox(
                width: 70,
                height: 70,
                child:  ImageProfile(size: 70,),
              ),
             
            ),
           const SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const <Widget>[
                Text('GEELUS DEEN'),
                Text("demodesign@gmail.com"),
              ],
            ),
          ],
        ),
            
          );
  }