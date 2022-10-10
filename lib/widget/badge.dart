import 'package:flutter/material.dart';
class Badge extends StatelessWidget {
  final String value;
  final Widget child;
  final Color? color;
  Badge({required this.child,this.color,required this.value});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          top: 8,
          right: 8,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red
            ),
            constraints: BoxConstraints(minHeight: 20,minWidth: 20),
            child: Text(value,textAlign:TextAlign.center,style: TextStyle(fontSize: 15),),
          ),)
      ],
      
    );
  }
}