import 'package:flutter/material.dart';
import 'package:u_select/widget/listTil.dart';
import '../widget/badge.dart';
import 'package:provider/provider.dart';
import '../providers/order.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Selection'),
          actions: [
            Consumer<Orders>(
              builder: (_, orderData, ch) => Badge(
                  child: ch as Widget, value: orderData.itemCount.toString()),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/order-screen');
                },
                icon: Icon(Icons.shop),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(.0),
          child: ListTil(),
        ));
  }
}
