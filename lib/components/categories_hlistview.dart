import 'package:flutter/material.dart';

class CategoriesHListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(icon: 'assets/cats/tshirt.png', caption: 'T-shirt'),
          Category(icon: 'assets/cats/dress.png', caption: 'Dress'),
          Category(icon: 'assets/cats/formal.png', caption: 'Formal'),
          Category(icon: 'assets/cats/informal.png', caption: 'Informal'),
          Category(icon: 'assets/cats/jeans.png', caption: 'Jeans'),
          Category(icon: 'assets/cats/shoe.png', caption: 'Shoe'),
          Category(icon: 'assets/cats/accessories.png', caption: 'Others'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String icon;
  final String caption;

  Category({this.icon, this.caption});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2.0),
        child: InkWell(
            onTap: () {},
            child: Container(
              width: 70.0,
              child: ListTile(
                title: Image.asset(
                  icon,
                  width: 50.0,
                ),
                subtitle: Container(
                  child: Text(caption),
                  alignment: Alignment.topCenter,
                ),
              ),
            )));
  }
}
