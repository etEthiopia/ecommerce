import 'package:flutter/material.dart';

class CartItems extends StatefulWidget {
  @override
  _CartItemsState createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  var productList = [
    {
      "name": "Blazer",
      "pic": "assets/products/blazer1.jpeg",
      "price": 84.99,
      "size": "M",
      "color": "Black",
      "quantity": 1
    },
    {
      "name": "Dress",
      "pic": "assets/products/dress1.jpeg",
      "price": 74.99,
      "size": "S",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Hills",
      "pic": "assets/products/hills1.jpeg",
      "price": 149.99,
      "size": "8",
      "color": "Brown",
      "quantity": 1
    },
    {
      "name": "Blazer 2",
      "pic": "assets/products/blazer2.jpeg",
      "price": 99.99,
      "size": "S",
      "color": "Black",
      "quantity": 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productList.length,
      itemBuilder: (BuildContext context, int index) {
        return (CartItem(
          name: productList[index]["name"],
          price: productList[index]["price"],
          pic: productList[index]["pic"],
          size: productList[index]["size"],
          color: productList[index]["color"],
          qunatity: productList[index]["quantity"],
        ));
      },
    );
  }
}

class CartItem extends StatelessWidget {
  final String name;
  final double price;
  final String pic;
  final String size;
  final String color;
  final int qunatity;

  CartItem(
      {this.name, this.price, this.pic, this.size, this.color, this.qunatity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          pic,
          height: 70.0,
          width: 70.0,
        ),
        title: Text(name),
        subtitle: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(
                              0.0,
                              7.0,
                              1.0,
                              7.0,
                            ),
                            child: Text("Size: ")),
                        Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Text(
                              size,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600),
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(15.0, 7.0, 1.0, 7.0),
                            child: Text("Color: ")),
                        Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Text(
                              color,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(
                          0.0,
                          7.0,
                          7.0,
                          7.0,
                        ),
                        child: Text(
                          "\$$price",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          controlQuantity(1);
                        },
                        child: Icon(Icons.arrow_drop_up)),
                    Text(qunatity.toString()),
                    InkWell(
                        onTap: () {
                          controlQuantity(0);
                        },
                        child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void controlQuantity(int command) {
    if (command == 1) {
      print("Incremant");
    } else {
      print("Decremant");
    }
  }
}
