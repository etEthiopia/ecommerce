import 'package:ecommerceapp/components/cart_items.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text("My Cart"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
        ],
      ),
      body: CartItems(),
      bottomNavigationBar: Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(
                child:
                    ListTile(title: Text("Total "), subtitle: Text("\$249.99")),
              ),
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    child: Text("Check out",
                        style: TextStyle(color: Colors.white)),
                    color: Colors.red),
              )
            ],
          )),
    );
  }
}
