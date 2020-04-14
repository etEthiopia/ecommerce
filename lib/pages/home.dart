<<<<<<< HEAD
import 'package:ecommerceapp/components/categories_hlistview.dart';
import 'package:ecommerceapp/components/image_carousel.dart';
import 'package:ecommerceapp/components/menu_drawer.dart';
import 'package:ecommerceapp/components/products_grid.dart';
=======
>>>>>>> aa5ec2d01343c02276ff5a709ec99da40f06639e
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
<<<<<<< HEAD
        elevation: 0.5,
=======
>>>>>>> aa5ec2d01343c02276ff5a709ec99da40f06639e
        title: Text('Fash App'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
<<<<<<< HEAD
              onPressed: () {
                Navigator.of(context).pushNamed("/mycart");
              })
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
=======
              onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Dagmawi Negussu"),
            accountEmail: Text("daginegussu@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/dagidark.JPG')),
            ),
            decoration: BoxDecoration(color: Colors.red),
          ),
          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text("Home Page"),
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ))),
          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text("My Account"),
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                  ))),
          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text("My Orders"),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.red,
                  ))),
          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text("Categories"),
                  leading: Icon(
                    Icons.dashboard,
                    color: Colors.red,
                  ))),
          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text("Favorites"),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ))),
          Divider(),
          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text("Settings"),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.red,
                  ))),
          InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text("About"),
                  leading: Icon(
                    Icons.help,
                    color: Colors.red,
                  )))
        ]),
>>>>>>> aa5ec2d01343c02276ff5a709ec99da40f06639e
      ),
    );
  }
}
