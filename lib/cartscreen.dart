import 'package:cart_application_1/model/cartmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
        return Column(children: [
        Expanded(child: ListView.builder(
          itemCount: value.cartItems.length,
          padding: EdgeInsets.all(12),
          itemBuilder: (context, index){
          return Padding(
            padding:  EdgeInsets.all(12.0),
            child: Container(
              
              decoration: BoxDecoration(color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12)),
              child: InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Image.asset(value.cartItems[index][2], ),
                  title: Text(value.cartItems[index][0]),
                  subtitle: Text(value.cartItems[index][1]),
                  trailing: IconButton(
                    icon: Icon(Icons.cancel_outlined),
                    onPressed: () => Provider.of<CartModel>(context, listen: false)
                    .removeItemFromCart(index), 
                  ),
                ),
              ),
            ),
          );
        }))
      ],);
      })
    );
  }
}