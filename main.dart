import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class ItemCard extends StatelessWidget {
  Color labelColor ;
  String itemName ;
  int amount ;
    
  ItemCard( this.labelColor, this.itemName, this.amount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon( Icons.square, color: labelColor ),
        Text(itemName),
        Text( amount.toString() ),
      ],
    );
  }
}


List< ItemCard > currentCart = [] ;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar : AppBar(
          title : Text( "Your Groceries" ) 
        ),
        body: Column( 
           children : currentCart
        )
      )
    );
  }
}
