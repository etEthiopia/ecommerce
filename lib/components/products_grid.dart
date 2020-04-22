import 'package:flutter/material.dart';

class ProductsGrid extends StatefulWidget {
  @override
  _ProductsGridState createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  var productList = [
    {
      "name": "Blazer",
      "pic": "assets/images/products/blazer1.jpeg",
      "prevPrice": 119.99,
      "price": 84.99,
    },
    {
      "name": "Dress",
      "pic": "assets/images/products/dress1.jpeg",
      "prevPrice": 99.99,
      "price": 74.99,
    },
    {
      "name": "Hills",
      "pic": "assets/images/products/hills1.jpeg",
      "prevPrice": 199.99,
      "price": 149.99
    },
    {
      "name": "Blazer 2",
      "pic": "assets/images/products/blazer2.jpeg",
      "prevPrice": 109.99,
      "price": 99.99
    },
    {
      "name": "Shoe",
      "pic": "assets/images/products/shoe1.jpg",
      "prevPrice": 49.99,
      "price": 34.99
    },
    {
      "name": "Sweat Pants",
      "pic": "assets/images/products/pants1.jpg",
      "prevPrice": 29.99,
      "price": 14.99
    },
    // {
    //   "name": "Dress 2",
    //   "pic": "assets/images/products/dress2.jpeg",
    //   "prevPrice": 109.99,
    //   "price": 84.99,
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: EdgeInsets.all(1.0),
            child: SingleProduct(
              name: productList[index]["name"],
              pic: productList[index]["pic"],
              prevPrice: productList[index]["prevPrice"],
              price: productList[index]["price"],
            ));
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String name;
  final String pic;
  final double prevPrice;
  final double price;

  SingleProduct({this.name, this.pic, this.prevPrice, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
            tag: name,
            child: Material(
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/productdetails',
                          arguments: {
                            "name": name,
                            "pic": pic,
                            "prevPrice": prevPrice,
                            "price": price
                          });
                    },
                    child: GridTile(
                        footer: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 7.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      child: Text(
                                    name,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                  Expanded(
                                    child: Text(
                                      "\$$prevPrice",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "\$$price",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          color: Colors.red),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        child: Image.asset(
                          pic,
                          fit: BoxFit.cover,
                        ))))));
  }
}
