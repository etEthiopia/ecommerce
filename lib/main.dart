<<<<<<< HEAD
import 'package:ecommerceapp/pages/cart.dart';
import 'package:ecommerceapp/pages/home.dart';
import 'package:ecommerceapp/pages/product_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => HomePage(),
      "/productdetails": (context) => ProductDetails(),
      "/mycart": (context) => CartPage()
    },
  ));
=======
import 'package:ecommerceapp/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
>>>>>>> aa5ec2d01343c02276ff5a709ec99da40f06639e
}
