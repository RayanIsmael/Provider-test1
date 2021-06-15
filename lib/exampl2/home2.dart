import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home2 extends StatelessWidget {
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
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page 2'),
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
                    title: Text("${products[index]['title']}${index+1}",
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text("${index+1}:${products[index]['body']}",
                        style: TextStyle(color: Colors.white)),

                    ///
                    trailing: IconButton(
                      onPressed: () {},
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
