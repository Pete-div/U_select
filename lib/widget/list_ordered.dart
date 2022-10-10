import 'package:flutter/material.dart';

class ListOrdered extends StatelessWidget {

 final String? text;
 ListOrdered(this.text);
  @override
  Widget build(BuildContext context) {

   

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(children: [
        CircleAvatar(radius: 5,),
        SizedBox(width: 10,),
        Container(child: Text(text as String,style: TextStyle(fontSize: 40),))
      ],      
      ),
    );
  }
}