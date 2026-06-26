import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

TextStyle textStyle = TextStyle(color: Colors.white);

Text newWhiteText(String t) {
  return Text(t, style: textStyle);
}

/*Widget addHorizontalSpacing( Widget w ){
  
  return Column (
    children : [
    Spacer(), w, Spacer()
    ]
  );
}
*/

class HorizontalSpace extends StatelessWidget{
  double width ;
  
  HorizontalSpace( this.width, {super.key} ) ;
    
  @override
  Widget build( BuildContext context ) {
    return(
      Container(
        width : width,
        child : const Spacer( flex : 1 )
      )
    );
  }
  
  /* 
   static List< Widget > give( double w, int count ) {
    Widget x = HorizontalSpace( w ) ; 
    List<Widget> result = [];
    
    for ( int i = 0 ; i<count; i++ ) { result.add( x ) ; }
    
    return result ;
  }
  */
  
}


class VerticalSpace extends StatelessWidget{
  double height ;
  
  VerticalSpace( this.height, {super.key} ) ;
    
  @override
  Widget build( BuildContext context ) {
    return(
      Container(
        height : height,
        child : const Spacer( flex : 1 )
      )
    );
  }
  
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
        VerticalSpace(10),
        Row(
          children: [
            Icon(Icons.square, color: labelColor),
            HorizontalSpace(5),
            Expanded(child: newWhiteText(itemName)),
            newWhiteText(amount.toString()),
          ],
        ),
        VerticalSpace(10),
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

/*
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
Container ← VerticalSpace ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#e4d1c] ← ⋯

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
Container ← HorizontalSpace ← Row ← Column ← ItemCard ← Column ←
⋯

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
Container ← VerticalSpace ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#e4d1c] ← ⋯

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
Container ← VerticalSpace ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#e4d1c] ← ⋯

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
Container ← HorizontalSpace ← Row ← Column ← ItemCard ← Column ←
⋯

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
Container ← VerticalSpace ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#e4d1c] ← ⋯

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
Container ← VerticalSpace ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#e4d1c] ← ⋯

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
Container ← HorizontalSpace ← Row ← Column ← ItemCard ← Column ←
⋯

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
Container ← VerticalSpace ← Column ← ItemCard ← Column ←
KeyedSubtree-[GlobalKey#e4d1c] ← ⋯

When the exception was thrown, this was the stack
═════════════════════════════════════════════════════════════════


 
 */
