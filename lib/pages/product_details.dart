import 'package:ecommerceapp/components/similar_products.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;

    String pic = data["pic"];
    String name = data["name"];
    double prevPrice = data["prevPrice"];
    double price = data["price"];

    print("built");
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text(name),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
        ],
      ),
      body: ListView(children: <Widget>[
        Container(
          height: 250,
          color: Colors.white,
          child: GridTile(
            child: Container(
                child: Image.asset(
              pic,
            )),
            footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$$prevPrice",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$$price",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose a size"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.5,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Size")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text("Color"),
                              content: Text("Choose a Color"),
                              actions: <Widget>[
                                MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: Text("Close"))
                              ]);
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.5,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Color")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text("Quantity"),
                              content: Text("Choose a Quantity"),
                              actions: <Widget>[
                                MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: Text("Close"))
                              ]);
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.5,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Quantity")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                )),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.5,
                  child: Text("Buy now")),
            ),
            IconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.red),
                onPressed: () {}),
          ],
        ),
        Divider(),
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
          title: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 1.0),
              child:
                  Text("Product details", style: TextStyle(color: Colors.red))),
          subtitle: Text(
              "SupEd company have only one project in hand at this time. It’s a company that does its own project and the project was a mobile application and had already a full team working on it so there was no place for me. The CEO insisted that I peruse to go on my own project and the company would support me. "),
        ),
        Divider(),
        Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child:
                    Text("Product Name", style: TextStyle(color: Colors.grey))),
            Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Name X",
                    style: TextStyle(fontWeight: FontWeight.bold))),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product Brand",
                    style: TextStyle(color: Colors.grey))),
            Padding(
                padding: EdgeInsets.all(5.0),
                child:
                    Text("Nam", style: TextStyle(fontWeight: FontWeight.bold))),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product Condition",
                    style: TextStyle(color: Colors.grey))),
            Padding(
                padding: EdgeInsets.all(5.0),
                child:
                    Text("NEW", style: TextStyle(fontWeight: FontWeight.bold))),
          ],
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.fromLTRB(16.0, 24.0, 8.0, 8.0),
          child: Text("Similar Products"),
        ),
        Container(height: 200, child: SimilarProducts())
      ]),
    );
  }
}
