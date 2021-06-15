import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test1/exampl2/myclass2.dart';
import 'package:provider_test1/exampl2/showproducts.dart';

class Home2 extends StatefulWidget {
  Home2({Key? key}) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  List products = [
    {
      "id": 1,
      "title": "product",
      "body":
          " Shopping Cart Part Shopping Cart Part Shopping Cart Part Shopping Cart Part"
    },
    {
      "id": 2,
      "title": "product",
      "body":
          " Shopping Cart Part Shopping Cart Part Shopping Cart Part Shopping Cart Part"
    },
    {
      "id": 3,
      "title": "product",
      "body":
          " Shopping Cart Part Shopping Cart Part Shopping Cart Part Shopping Cart Part"
    },
    {
      "id": 4,
      "title": "product",
      "body":
          " Shopping Cart Part Shopping Cart Part Shopping Cart Part Shopping Cart Part"
    },
    {
      "id": 5,
      "title": "product",
      "body":
          " Shopping Cart Part Shopping Cart Part Shopping Cart Part Shopping Cart Part"
    },
    {
      "id": 6,
      "title": "product",
      "body":
          " Shopping Cart Part Shopping Cart Part Shopping Cart Part Shopping Cart Part"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var myprovider = Provider.of<MyClass2>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          
          title: Text('Home Page 2'),
          actions: [
            Badge(
              badgeContent:
                  Text("${Provider.of<MyClass2>(context).mylist.length}"), ////
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Products()));
                  },
                  icon: Icon(Icons.shopping_bag_outlined)),
              position: BadgePosition(top: 0, end: 0),
              animationDuration: Duration(milliseconds: 500),
              animationType: BadgeAnimationType.slide,
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
          ],
        ),
        ///////
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(top: (index == 0) ? 10 : 12, bottom: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 8,
                shadowColor: Colors.blue,
                color: Colors.blue[800],
                child: ListTile(
                    contentPadding: EdgeInsets.all(15),
                    isThreeLine: true,
                    leading: Text("ID:${products[index]['id']}",
                        style: TextStyle(color: Colors.white)),
                    title: Text("${products[index]['title']}${index + 1}",
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text("${index + 1}:${products[index]['body']}",
                        style: TextStyle(color: Colors.white)),

                    ///
                    trailing: IconButton(
                      onPressed: () {
                        myprovider.addToList(products[index]);
                      },
                      icon: Icon(Icons.shopping_bag_outlined),
                      color: Colors.white,
                    )

                    ///
                    ),
              ),
            );
          },
        )
        //////
        );
  }
}
