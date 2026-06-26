import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class ItemCard extends StatelessWidget {
  ItemCard(Color labelColor, String itemName, int amount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon( Icons.square, color: labelColor ),
        Text(itemName),
        Text(amount),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Column()));
  }
}
