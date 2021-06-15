import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test1/displayValues/value1.dart';
import 'package:provider_test1/displayValues/value2.dart';
import 'package:provider_test1/myclass/myclass.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      ////////////////
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Value1(),
              SizedBox(
                height: 30,
              ),
              Value2(),
            ],
          ),
        ),
      ),
      ////////////////
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.vertical_align_top_rounded),
        onPressed: () {
          showMyDialog(context, formkey);
        },
      ),
    );
  }
  /////////////////////

  showMyDialog(context, formkey) {
    var value1, value2;
    AwesomeDialog(
      context: context,
      dialogType: DialogType.NO_HEADER,
      animType: AnimType.BOTTOMSLIDE,
      aligment: Alignment.center,
      desc: 'Enter Value',
      body: Center(
        child: Container(
          height: 400,
          child: Form(
              key: formkey,
              child: Column(
                children: [
                  Text(
                    "Enter Values",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  ////////
                  SizedBox(
                    height: 50,
                  ),
                  ////////
                  TextFormField(
                    onSaved: (newValue) {
                      value1 = newValue;
                    },
                    validator: (value) {
                      if (value!.isEmpty)
                        return "isEmpty";
                      else
                        return null;
                    },
                    ////////////////////////
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                        hintText: "Enter Value1",
                        labelText: "Enter Value1"),
                  ),
                  ////////
                  SizedBox(
                    height: 30,
                  ),
                  ////////
                  TextFormField(
                    onSaved: (newValue) {
                      value2 = newValue;
                    },
                    validator: (value) {
                      if (value!.isEmpty)
                        return "isEmpty";
                      else
                        return null;
                    },
                    ////////////////////////
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                        hintText: "Enter Value2",
                        labelText: "Enter Value2"),
                  ),
                  ////////
                  SizedBox(
                    height: 30,
                  ),
                  ////////
                  InkWell(
                      onTap: () {
                        var formatdata = formkey.currentState;
                        if (formatdata.validate()) {
                          formatdata.save();
                          Provider.of<MyClass>(context, listen: false)
                              .chV(v1: value1, v2: value2);
                          Navigator.of(context).pop();
                        }
                      },
                      child: Container(
                        child: Text("OK"),
                        // this containar maked by Adobe XD
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        width: 200.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21.0),
                          color: Colors.green[700],
                          border: Border.all(
                            width: 2.0,
                            // color: Colors.green[900],//themdata
                          ),
                        ),
                      ))
                ],
              )),
        ),
      ),
    )..show();
    ///////////////////
  }
  /////////////////////
}
