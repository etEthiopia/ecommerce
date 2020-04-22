import 'package:ecommerceapp/components/products_grid.dart';
import 'package:flutter/material.dart';

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
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
