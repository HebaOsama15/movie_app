import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
 late double size;
   ImageProfile({
    Key? key,
    required this.size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("assets/images/personPhoto.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      radius: size,
    );
  }
}