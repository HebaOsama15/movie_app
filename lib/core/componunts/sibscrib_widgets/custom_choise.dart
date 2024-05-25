import 'package:flutter/material.dart';
import 'package:movie_ui/core/colors/colors.dart';

class CustomChoise extends StatefulWidget {
late String title;
List<String>? list;
bool? isDropDown = false;

CustomChoise({required this.title, this.list, this.isDropDown});

  @override
  State<CustomChoise> createState() => _CustomChoiseState();
}

class _CustomChoiseState extends State<CustomChoise> {
   late int selectedOption;
  @override
  void initState() {
    super.initState();
    selectedOption = 0; // Set an initial value for the selected radio button
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedOption = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title , style: Theme.of(context).textTheme.titleMedium,),

if(!widget.isDropDown!)...[
Wrap(
          alignment: WrapAlignment.start,
          children: List<Widget>.generate(widget.list!.length, (index) {
            final optionValue = index + 1;
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(
                  activeColor: kDeepYellow,
                  value: optionValue,
                  groupValue: selectedOption,
                  onChanged: (val) {
                    setSelectedRadio(val as int);
                  },
                ),
                Text(widget.list![index]),
              ],
            );})
          

),


              ]
              else ...[
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Screens you can watch on at\nthe same time",
                    style:Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey[600]),),
                    //dropdwon here
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Chose number of devices",
                        ),
                        Icon(Icons.arrow_drop_down, color: Colors.white,)
                      ],
                    ),
                    
                  ],
                )
              ],
              Divider(color: Colors.grey[700],),
    const SizedBox(height: 10,)
              ]
            );

  }
}