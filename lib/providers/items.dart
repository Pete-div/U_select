import 'package:flutter/material.dart';
import '../providers/item.dart';

class Items with ChangeNotifier{
List<ListItems> _products = [
ListItems(
   title: 'Yellow',
  id: 'm1', 
 
  price: 32.1, 
 
  color: Colors.yellow
  ),
  ListItems(
  id: 'm2', 
  
  price: 2.0, 
  title: 'Blue',
  color: Colors.blue
  ),
  ListItems(
  id: 'm3', 
  
  price: 5.8, 
  title: 'Brown',
  color: Colors.brown
  ),
  ListItems(
  id: 'm4', 
  
  price: 32.5, 
  title: 'Green',
  color: Colors.green
  ),
  ListItems(
  id: 'm5', 
  
  price: 0.5, 
  title: 'Grey',
  color: Colors.grey
  ),
  ListItems(
  id: 'm6', 
  
  price: 322.5, 
  title: 'Teal',
  color: Colors.teal
  ),
  ListItems(
  id: 'm7', 

  price: 39.5, 
  title: 'yellow',
  color: Colors.red
  ),
  ListItems(
  id: 'm9', 
  
  price: 2.4, 
  title: 'Indigo',
  color: Colors.indigo
  ),
  ListItems(
  id: 'm10', 
  
  price: 312.6, 
  title: 'Lime',
  color: Colors.lime
  ),
  ListItems(
  id: 'm11', 
  isFavorite: false, 
  price: 32.53, 
  title: 'blacky',
  color: Colors.black54
  ),
  ListItems(
  id: 'm12', 
  
  price: 324.15, 
  title: 'purple',
  color: Colors.deepPurple
  ),
  ListItems(
  id: 'm13', 
 isFavorite: false,
  price: 32.5, 
  title: 'Light',
  color: Colors.lightGreen
  ),
  ListItems(
  id: 'm14', 
  
  price: 02.5, 
  title: 'accentRed',
  color: Colors.redAccent
  ),
  ListItems(
  id: 'm15', 
  isFavorite: false,
  price: 32.5, 
  title: 'ShadeGreen',
  color: Colors.green.shade600
  ),
  ListItems(
  id: 'm16', 
  isFavorite: false,
  price: 2.0, 
  title: 'deep',
  color: Colors.deepOrangeAccent
  ),


];

List<ListItems> get product =>
[..._products];

void toggleItem(ListItems id){
  id.isToggle();
  notifyListeners();
}

}