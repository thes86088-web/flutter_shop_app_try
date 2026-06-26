import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

TextStyle textStyle =  TextStyle(
  color : Colors.white  

) ;

Text newWhiteText( String t ){
    return Text( t,
     style : textStyle          
     ) ;
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
        Expanded (
          child : newWhiteText(itemName)
        ),
        newWhiteText( amount.toString() ),
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
          title : newWhiteText( "Your Groceries" ),
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

1. no spacing between labelColor and name -> add space in between them

2. no spacing in between ItemCards -> make spacing at top and bottom as part of widget

*/
