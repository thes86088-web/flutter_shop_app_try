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


List< ItemCard > currentCart = [ 

  ItemCard( Colors.lightBlue, "Milk", 1 ),
  ItemCard( Colors.lightGreen , "Bananas", 5 ),
  ItemCard( Colors.orange , "Chicken Eggs", 1 ),
    
] ;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar : AppBar(
          title : Text( "Your Groceries" ),
          backgroundColor : Colors.black 
        ),
        body: Column( 
           children : currentCart
        ),
        backgroundColor : Colors.black12
      )
    );
  }
}

/*PROBLEMS TO SOLVE :

1. no spacing between name and amount of items -> warp name in Expanded()

2. text not visible on dark background -> change font color to white

*/
