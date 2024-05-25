import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';
import 'package:movie_ui/core/componunts/my_text_feild.dart';
import 'package:movie_ui/core/componunts/profile_image.dart';
import 'package:movie_ui/core/componunts/scaffolds.dart/app_bar.dart';


class EditProfile extends StatelessWidget {
   EditProfile({ Key? key }) : super(key: key);
  List<String>list = ["Email", "Full Name", "Change Password", "Phone Number", "Gender"];
  bool isNumber = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMovi("EDIT PROFILE", context, false),
      body:
       Column(
         children: [
           _profileImage(),
           _profileTextFeild(context, list)
         ],
       ),
    );
  }

  

 
}

 Expanded _profileTextFeild(BuildContext context, List<String> list) {

    return Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Container(
                height:  MediaQuery.of(context).size.height -260 ,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(top: 40, right: 10, left: 20,bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(20,),topRight:Radius.circular(10,) ),
                  color:Colors.grey[850]!.withOpacity(0.6),
                ),
              child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: 
                    List.generate(list.length, (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //validations
                    if(index !=2 && index !=3)...[
                        MyTextField(
                    label: list[index],
                    textCapitalization: TextCapitalization.words,
                    regex:'A-Za-z ',
                  ),]else
                  MyTextField(
                    label: list[index],
                    textInputType: TextInputType.number,
                    regex: '0-9',
                    obscureText:index ==2? true:false,
                    lastItem: true,
                  ),
                      ],
                    ),)
                    
                  ),
                  ElevatedButton(
                    onPressed: (){ 
                      //edit method
                      Navigator.pop(context);},
                     child: const Text("PAY & CONFIRM",style: TextStyle(color: kDeepYellow),
                     )),
                ],
              ),
              
              ),
            ),
          );
  }

  Expanded _profileImage() {
    return Expanded(
            flex: 1,
            child: Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                        ImageProfile(size: 50,),

                        InkWell(
                          onTap: () {
                            //open camera code here
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.amber[700],
                            child:const Icon(Icons.camera_alt,color: Colors.black,size: 20,),
                            radius: 15,
                          ),
                        ),
                        
                      ],
              ),
        
          ));
  }

