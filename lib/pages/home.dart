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
      ),
    );
  }
}
