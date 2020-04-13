import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            onTap: () {
              Navigator.of(context).pushNamed("/mycart");
            },
            child: ListTile(
                title: Text("My Cart"),
                leading: Icon(
                  Icons.shopping_cart,
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
    );
  }
}
