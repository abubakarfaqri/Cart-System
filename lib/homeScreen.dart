import 'package:cart_application_1/cartscreen.dart';
import 'package:cart_application_1/components/Itemtiles.dart';
import 'package:cart_application_1/model/cartmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context){
          return CartScreen();
        })),backgroundColor: Colors.amber,
        child: Icon(Icons.shopping_bag),
        ),
        body: Column( 
          children: [ Padding(padding: EdgeInsets.only(left: 30, top: 30),
          child:Text("Home Screen", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          
          Padding(
            padding:  EdgeInsets.only(left: 30, top: 30),
            child: Text("Items We Offer", style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 30,),
          Expanded(child: Consumer<CartModel>(builder: (context, value, child){
           return GridView.builder(
            itemCount: value.shopItmes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index){
            return ItemTilesScreen(
              itemName:value.shopItmes[index][0] ,
              itemPrice:value.shopItmes[index][1] ,
              imagePath: value.shopItmes[index][2],
              onPressed: (){
                Provider.of<CartModel>(context, listen: false).addItemToCart(index);
              },
            );
          });
          }))
          ],),
      ),
    );
  }
}