import 'package:flutter/material.dart';

class OrderItems {
  final String id;
  final String title;
  final double price;
  final int quantity;

OrderItems({required this.id,required this.title,required this.price,required this.quantity});
}

class Orders with ChangeNotifier{

  Map<String,OrderItems> _orders={};


  Map<String,OrderItems> get orders =>
  {..._orders};

double get totalAmount{
 var total = 0.0;
 _orders.forEach((prodId, OrderItems) {
  total +=OrderItems.price *OrderItems.quantity;
  });
  return total;

}
  int get itemCount{
    return _orders.length;

  }

  void addProducts(String prodId,double price,String title){

    if (_orders.containsKey(prodId)){
      _orders.update(prodId, (value) => OrderItems(
      
      id:value.id,
        price:value.price,  
       title:value.title,
    
      quantity: value.quantity +1,
      ),);
    }else{
     _orders.putIfAbsent(prodId, () => OrderItems(
        id:DateTime.now().toIso8601String(), 
        price: price, 
        title: title,
         quantity: 1
         
         ));
    }  
    notifyListeners();
     }
     void removeSingleItem(prodId){
      if(!_orders.containsKey(prodId)){
return;
      }
      if(_orders[prodId]!.quantity > 1){
        _orders.update(prodId, (value) => OrderItems(
        id:DateTime.now().toIso8601String(), 
        price: value.price, 
        title: value.title,
         quantity: -1
         
         ));
       
      }
      else{
        _orders.remove(prodId);
        notifyListeners();
      }
     }
  }

