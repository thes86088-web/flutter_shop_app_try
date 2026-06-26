import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

TextStyle textStyle = TextStyle(color: Colors.white);

Text newWhiteText(String t) {
  return Text(t, style: textStyle);
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
  Color labelColor;
  String itemName;
  int amount;

  ItemCard(this.labelColor, this.itemName, this.amount, {super.key});

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Container(child: Spacer(flex: 1), height: 10),
        Row(
          children: [
            Icon(Icons.square, color: labelColor),
            Container(child: Spacer(flex: 1), width: 10),
            Expanded(child: newWhiteText(itemName)),
            newWhiteText(amount.toString()),
          ],
        ),
        Container(child: Spacer(flex: 1), height: 10),
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

/*PROBLEMS TO SOLVE :

══╡ EXCEPTION CAUGHT BY WIDGETS LIBRARY ╞════════════════════════
The following assertion was thrown while applying parent data.:
Incorrect use of ParentDataWidget.
The ParentDataWidget Expanded(flex: 1) wants to apply ParentData
of type FlexParentData to a RenderObject, which has been set up
to accept ParentData of incompatible type ParentData.
Usually, this means that the Expanded widget has the wrong
ancestor RenderObjectWidget. Typically, Expanded widgets are
placed directly inside Flex widgets.
The offending Expanded is currently placed inside a
ConstrainedBox widget.
The ownership chain for the RenderObject that received the
incompatible parent data was:
  SizedBox.shrink ← Expanded ← Spacer ← ConstrainedBox ←
Container ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#09cbf] ← _BodyBuilder ← ⋯

When the exception was thrown, this was the stack
═════════════════════════════════════════════════════════════════

══╡ EXCEPTION CAUGHT BY WIDGETS LIBRARY ╞════════════════════════
The following assertion was thrown while applying parent data.:
Incorrect use of ParentDataWidget.
The ParentDataWidget Expanded(flex: 1) wants to apply ParentData
of type FlexParentData to a RenderObject, which has been set up
to accept ParentData of incompatible type ParentData.
Usually, this means that the Expanded widget has the wrong
ancestor RenderObjectWidget. Typically, Expanded widgets are
placed directly inside Flex widgets.
The offending Expanded is currently placed inside a
ConstrainedBox widget.
The ownership chain for the RenderObject that received the
incompatible parent data was:
  SizedBox.shrink ← Expanded ← Spacer ← ConstrainedBox ←
Container ← Row ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#09cbf] ← ⋯

When the exception was thrown, this was the stack
═════════════════════════════════════════════════════════════════

══╡ EXCEPTION CAUGHT BY WIDGETS LIBRARY ╞════════════════════════
The following assertion was thrown while applying parent data.:
Incorrect use of ParentDataWidget.
The ParentDataWidget Expanded(flex: 1) wants to apply ParentData
of type FlexParentData to a RenderObject, which has been set up
to accept ParentData of incompatible type ParentData.
Usually, this means that the Expanded widget has the wrong
ancestor RenderObjectWidget. Typically, Expanded widgets are
placed directly inside Flex widgets.
The offending Expanded is currently placed inside a
ConstrainedBox widget.
The ownership chain for the RenderObject that received the
incompatible parent data was:
  SizedBox.shrink ← Expanded ← Spacer ← ConstrainedBox ←
Container ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#09cbf] ← _BodyBuilder ← ⋯

When the exception was thrown, this was the stack
═════════════════════════════════════════════════════════════════

══╡ EXCEPTION CAUGHT BY WIDGETS LIBRARY ╞════════════════════════
The following assertion was thrown while applying parent data.:
Incorrect use of ParentDataWidget.
The ParentDataWidget Expanded(flex: 1) wants to apply ParentData
of type FlexParentData to a RenderObject, which has been set up
to accept ParentData of incompatible type ParentData.
Usually, this means that the Expanded widget has the wrong
ancestor RenderObjectWidget. Typically, Expanded widgets are
placed directly inside Flex widgets.
The offending Expanded is currently placed inside a
ConstrainedBox widget.
The ownership chain for the RenderObject that received the
incompatible parent data was:
  SizedBox.shrink ← Expanded ← Spacer ← ConstrainedBox ←
Container ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#09cbf] ← _BodyBuilder ← ⋯

When the exception was thrown, this was the stack
═════════════════════════════════════════════════════════════════

══╡ EXCEPTION CAUGHT BY WIDGETS LIBRARY ╞════════════════════════
The following assertion was thrown while applying parent data.:
Incorrect use of ParentDataWidget.
The ParentDataWidget Expanded(flex: 1) wants to apply ParentData
of type FlexParentData to a RenderObject, which has been set up
to accept ParentData of incompatible type ParentData.
Usually, this means that the Expanded widget has the wrong
ancestor RenderObjectWidget. Typically, Expanded widgets are
placed directly inside Flex widgets.
The offending Expanded is currently placed inside a
ConstrainedBox widget.
The ownership chain for the RenderObject that received the
incompatible parent data was:
  SizedBox.shrink ← Expanded ← Spacer ← ConstrainedBox ←
Container ← Row ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#09cbf] ← ⋯

When the exception was thrown, this was the stack
═════════════════════════════════════════════════════════════════

══╡ EXCEPTION CAUGHT BY WIDGETS LIBRARY ╞════════════════════════
The following assertion was thrown while applying parent data.:
Incorrect use of ParentDataWidget.
The ParentDataWidget Expanded(flex: 1) wants to apply ParentData
of type FlexParentData to a RenderObject, which has been set up
to accept ParentData of incompatible type ParentData.
Usually, this means that the Expanded widget has the wrong
ancestor RenderObjectWidget. Typically, Expanded widgets are
placed directly inside Flex widgets.
The offending Expanded is currently placed inside a
ConstrainedBox widget.
The ownership chain for the RenderObject that received the
incompatible parent data was:
  SizedBox.shrink ← Expanded ← Spacer ← ConstrainedBox ←
Container ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#09cbf] ← _BodyBuilder ← ⋯

When the exception was thrown, this was the stack
═════════════════════════════════════════════════════════════════

══╡ EXCEPTION CAUGHT BY WIDGETS LIBRARY ╞════════════════════════
The following assertion was thrown while applying parent data.:
Incorrect use of ParentDataWidget.
The ParentDataWidget Expanded(flex: 1) wants to apply ParentData
of type FlexParentData to a RenderObject, which has been set up
to accept ParentData of incompatible type ParentData.
Usually, this means that the Expanded widget has the wrong
ancestor RenderObjectWidget. Typically, Expanded widgets are
placed directly inside Flex widgets.
The offending Expanded is currently placed inside a
ConstrainedBox widget.
The ownership chain for the RenderObject that received the
incompatible parent data was:
  SizedBox.shrink ← Expanded ← Spacer ← ConstrainedBox ←
Container ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#09cbf] ← _BodyBuilder ← ⋯

When the exception was thrown, this was the stack
═════════════════════════════════════════════════════════════════

══╡ EXCEPTION CAUGHT BY WIDGETS LIBRARY ╞════════════════════════
The following assertion was thrown while applying parent data.:
Incorrect use of ParentDataWidget.
The ParentDataWidget Expanded(flex: 1) wants to apply ParentData
of type FlexParentData to a RenderObject, which has been set up
to accept ParentData of incompatible type ParentData.
Usually, this means that the Expanded widget has the wrong
ancestor RenderObjectWidget. Typically, Expanded widgets are
placed directly inside Flex widgets.
The offending Expanded is currently placed inside a
ConstrainedBox widget.
The ownership chain for the RenderObject that received the
incompatible parent data was:
  SizedBox.shrink ← Expanded ← Spacer ← ConstrainedBox ←
Container ← Row ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#09cbf] ← ⋯

When the exception was thrown, this was the stack
═════════════════════════════════════════════════════════════════

══╡ EXCEPTION CAUGHT BY WIDGETS LIBRARY ╞════════════════════════
The following assertion was thrown while applying parent data.:
Incorrect use of ParentDataWidget.
The ParentDataWidget Expanded(flex: 1) wants to apply ParentData
of type FlexParentData to a RenderObject, which has been set up
to accept ParentData of incompatible type ParentData.
Usually, this means that the Expanded widget has the wrong
ancestor RenderObjectWidget. Typically, Expanded widgets are
placed directly inside Flex widgets.
The offending Expanded is currently placed inside a
ConstrainedBox widget.
The ownership chain for the RenderObject that received the
incompatible parent data was:
  SizedBox.shrink ← Expanded ← Spacer ← ConstrainedBox ←
Container ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#09cbf] ← _BodyBuilder ← ⋯

When the exception was thrown, this was the stack
═════════════════════════════════════════════════════════════════


*/
