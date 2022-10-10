import 'package:flutter/material.dart';

class ListItems {
  final String id;
  final String title;
  final double price;
  bool isFavorite;
  final Color color;

  ListItems({required this.id,this.isFavorite = false,required this.price,required this.title,required this.color});


  void isToggle(){
    isFavorite =!isFavorite;
}
}