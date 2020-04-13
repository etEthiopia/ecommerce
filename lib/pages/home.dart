import 'package:ecommerceapp/components/categories_hlistview.dart';
import 'package:ecommerceapp/components/image_carousel.dart';
import 'package:ecommerceapp/components/menu_drawer.dart';
import 'package:ecommerceapp/components/products_grid.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text('Fash App'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {})
        ],
      ),

      // Side Menu Drawer
      drawer: MenuDrawer(),

      // The body of home page
      body: ListView(
        children: <Widget>[
          // Carousel of promo images
          ImageCarousel(),

          // Title of Cateogries
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 24.0, 8.0, 8.0),
            child: Text("Categories"),
          ),

          // Categories [icon, caption] horizontal listview
          CategoriesHListView(),

          // Title of Recent Products
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 24.0, 8.0, 8.0),
            child: Text("Products"),
          ),

          // The ProductsGrid in Cards
          Container(height: 200, child: ProductsGrid())
        ],
      ),
    );
  }
}
