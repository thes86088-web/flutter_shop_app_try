import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class ItemCard extends StatelessWidget {
  
  ItemCard( Color labelColor, String itemName, int amount ){
    super( { super.key } ) ;
    labelColor: labelColor ;
    itemName : itemName ;
    amount = amount ;
  }
  
  @override
  Widget build( BuildContext context ) {
    return Row(
    
    )
  }
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        body: Column( )
      ),
    );
  }
}
