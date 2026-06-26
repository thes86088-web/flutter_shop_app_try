import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

TextStyle textStyle = TextStyle(color: Colors.white);

Text newWhiteText(String t) {
  return Text(t, style: textStyle);
}

class ItemCard extends StatelessWidget {
  Color labelColor;
  String itemName;
  int amount;

  ItemCard(this.labelColor, this.itemName, this.amount, {super.key});

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        const SizedBox(height : 10),
        Row(
          children: [
            Icon(Icons.square, color: labelColor),
            SizedBox(width : 5),
            Expanded(child: newWhiteText(itemName)),
            newWhiteText(amount.toString()),
          ],
        ),
        const SizedBox(height : 10),
      ],
    ));
  }
}

List<Widget /*ItemCard*/> currentCart = [
  //Spacer(),
  ItemCard(Colors.lightBlue, "Milk", 1),
  ItemCard(Colors.lightGreen, "Bananas", 5),
  ItemCard(Colors.orange, "Chicken Eggs", 1),
  //Spacer(),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: newWhiteText("Your Groceries"),
          backgroundColor: Colors.black,
        ),
        body: Column(children: currentCart),
        backgroundColor: Colors.black12,
      ),
    );
  }
}
