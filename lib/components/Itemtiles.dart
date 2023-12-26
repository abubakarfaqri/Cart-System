import 'package:flutter/material.dart';

class ItemTilesScreen extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  void Function()? onPressed;

   ItemTilesScreen({super.key,
   required this.itemName,
   required this.itemPrice,
   required this.imagePath,
   required this.onPressed,
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container( decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.asset(imagePath,
          height: 90,),
          Text(itemName),
          Text(itemPrice),
          MaterialButton(onPressed: onPressed,
          child: Text("Add Cart"))
        ]),
      ),
    );
  }
}