import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldType1 extends StatelessWidget {
late String title;
TextFieldType1({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 15),
      TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[850]!,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:Colors.grey[850]!,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          
        ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
      ),
    ],
  );
  }
}

