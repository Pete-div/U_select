import 'package:flutter/material.dart';
import '../providers/items.dart';
import 'package:provider/provider.dart';
import '../widget/schrow_List.dart';
import '../providers/order.dart';


class ListTil extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final itemProduct = Provider.of<Items>(context, listen: false);
   
    final products = itemProduct.product;
     final orderData = Provider.of<Orders>(context);
    
    return ListView.builder(
      itemCount: itemProduct.product.length,
      itemBuilder: (ctx, i) {
        
       return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 140,
                color: products[i].color,
              ),
              Expanded(
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(products[i].title),
                  ),
                  trailing: GestureDetector(
                    onLongPress:()=> orderData.removeSingleItem(products[i]),
                    onTap: () {
                      orderData.addProducts(
                        products[i].id,
                        products[i].price,
                        products[i].title,
                      );
                     
                      itemProduct.toggleItem(products[i]);

                   
                    },
                    child:
                        products[i].isFavorite ? Icon(Icons.check) : Text('Add'),
                  ),
                ),
              ),
            ],
          ),
          Divider()
        ],
      ),);
        }
      
    );
  }
}

