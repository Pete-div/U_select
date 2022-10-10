import 'package:flutter/material.dart';
import '../widget/list_ordered.dart';
import '../providers/items.dart';
import '../providers/order.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorData = Provider.of<Items>(context, listen: false);
    final colour = colorData.product;
    final orderData = Provider.of<Orders>(context);
    final orderProduct = orderData.orders;
  
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Your Orders')),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(200, 140, 201, 1).withOpacity(0.4),
                  Color.fromRGBO(100, 103, 90, 1).withOpacity(0.7),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                stops: [0, 1],
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: orderProduct.length,
                    itemBuilder: (ctx, i) {
                      return ListOrdered(orderProduct.values.toList()[i].title);
                    }),
              ),
            Container(color: Colors.black,width: double.infinity,height: 5,),
            SizedBox(
              height: 20,
            ),
              Container(
                height: 200,
                child: ListTile(
                  title: Text('Total:',style: TextStyle(fontSize: 50),),
                  trailing: Text('\$${orderData.totalAmount.toStringAsFixed(2)}',
                    
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
