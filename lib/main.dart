import 'package:ecommerceapp/pages/home.dart';
import 'package:ecommerceapp/pages/product_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => HomePage(),
      "/productdetails": (context) => ProductDetails(),
    },
  ));
}
