import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test1/exampl2/home2.dart';
import 'package:provider_test1/exampl2/myclass2.dart';

class Products extends StatefulWidget {
  Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    var products = Provider.of<MyClass2>(context).mylist;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Home2()));
              },
              icon: Icon(
                Icons.keyboard_backspace_rounded,
              )),
          title: Text('Selection Products'),
        ),
        ///////
        body: products.length == 0
            ? Center(
                child: Text(
                  "No Products",
                  style: Theme.of(context).textTheme.headline6,
                ),
              )
            : ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
                        top: (index == 0) ? 10 : 12, bottom: 10),
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
                          title: Text("${products[index]['title']}",
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text("${products[index]['body']}",
                              style: TextStyle(color: Colors.white)),

                          ///
                          trailing: IconButton(
                            onPressed: () {
                              //products.removeAt(index);
                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (BuildContext context) =>
                              //             super.widget));
                              Provider.of<MyClass2>(context, listen: false)
                                  .removeproduct(products[index]['id']);
                              //////
                              // products.removeAt(index);
                              // Navigator.of(context)
                              //     .pushReplacement(MaterialPageRoute(
                              //   builder: (context) => Products(),
                              // ));
                            },
                            icon: Icon(Icons.delete),
                            color: Colors.red[400],
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
