import 'package:flutter/material.dart';

class ProductsGrid extends StatefulWidget {
  @override
  _ProductsGridState createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  var productList = [
    {
      "name": "Blazer",
      "pic": "assets/products/blazer1.jpeg",
      "prevPrice": 119.99,
      "price": 84.99,
    },
    {
      "name": "Red Dress",
      "pic": "assets/products/dress1.jpeg",
      "prevPrice": 99.99,
      "price": 74.99,
    },
    {
      "name": "Hills",
      "pic": "assets/products/hills1.jpeg",
      "prevPrice": 199.99,
      "price": 149.99
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          name: productList[index]["name"],
          pic: productList[index]["pic"],
          prevPrice: productList[index]["prevPrice"],
          price: productList[index]["price"],
        );
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
                            color: Colors.white70,
                            child: ListTile(
                              leading: Text(name,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              title: Text(
                                "\$$price",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    ),
                              ),
                              subtitle: Text(
                                "\$$prevPrice",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            )),
                        child: Image.asset(
                          pic,
                          fit: BoxFit.cover,
                        ))))));
  }
}
