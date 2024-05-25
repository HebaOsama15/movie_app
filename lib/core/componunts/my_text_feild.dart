import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  TextEditingController? controller;
  TextInputType? textInputType;
  TextCapitalization? textCapitalization;
  String label;
  String? regex;
  bool lastItem;
  bool? obscureText; 

  MyTextField(
      { this.controller,
      this.textInputType,
      this.textCapitalization,
      required this.label,
      this.regex,
      this.lastItem = false,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText : obscureText! ,
          controller: controller,
          keyboardType: textInputType ?? TextInputType.text,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber[700]!),
                        ),
            label: Text(label),
          ),
          inputFormatters: regex != null
              ? [
                  FilteringTextInputFormatter.allow(RegExp('[$regex]+')),
                ]
              : null,
          validator: (v) {
            if (v!.isEmpty) {
              return 'Empty';
            }
            return null;
          },
        ),
        if(!lastItem)
        const SizedBox(
          height: 20,
        ),

      ],
    );
  }
}
