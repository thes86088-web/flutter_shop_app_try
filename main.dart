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

/*Widget addSpacing( Widget w ){
  
  return Column (
    children : [
    Spacer(), w, Spacer()
    ]
  );
}
*/


class ItemCard extends StatelessWidget {
  Color labelColor ;
  String itemName ;
  int amount ;
    
  ItemCard( this.labelColor, this.itemName, this.amount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column (
      children : [ 
         Spacer( flex : 1 ),
         Row(
          children: [
            Icon( Icons.square, color: labelColor ),
            Spacer( flex : 1 ),
            Expanded (
              child : newWhiteText(itemName)
            ),
            newWhiteText( amount.toString() ),
          Spacer( flex : 1 )
          ],
        )
       ]
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

1. configure Spacer() for elements of ItemCard

2. configure Spacer() for instances of ItemCard

*/
