import 'package:ecommerceapp/pages/cart.dart';
import 'package:ecommerceapp/pages/home.dart';
import 'package:ecommerceapp/pages/login.dart';
import 'package:ecommerceapp/pages/product_details.dart';
import 'package:ecommerceapp/pages/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.red.shade900,
        scaffoldBackgroundColor: Colors.red.shade900),
    routes: {
      "/": (context) => Login(),
      "/home": (context) => HomePage(),
      "/productdetails": (context) => ProductDetails(),
      "/mycart": (context) => CartPage(),
      "/register": (context) => Register()
    },
  ));
}
