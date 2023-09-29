// import 'dart:js_util';

import 'package:demo/addmoney.dart';
import 'package:demo/customnavigatioinbar.dart';
import 'package:demo/listviewwidget.dart';
import 'package:demo/settingpage.dart';
import 'package:demo/textfieldshopping.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ListItem {
  String text1;
  String text2;
  ListItem(this.text1, this.text2);
}

bool isNumeric(String text2) {
  if (text2 == null) {
    return false;
  }
  return double.tryParse(text2) != null;
}

class ShopppingPage extends StatefulWidget {
  const ShopppingPage({super.key});

  @override
  State<ShopppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShopppingPage> {
  final TextEditingController mycontroller = TextEditingController();
  final TextEditingController my2controller = TextEditingController();
  final List<ListItem> _listItem = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("BUDGET BUDDY"),
        ),
        backgroundColor: Colors.blueGrey[100],
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Shopping List",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          InputFieldShoppinglist(
            controller1: mycontroller,
            controller2: my2controller,
          ),
          SizedBox(
            height: 50,
          ),
          ListViewWidget(Items: _listItem),
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.add),
          label: Text('Add to list'),
          onPressed: () {
            final text1 = mycontroller.text;
            final text2 = my2controller.text;
            if (text1.isNotEmpty && text2.isNotEmpty && isNumeric(text2)) {
              setState(() {
                _listItem.add(ListItem(text1, text2));
                mycontroller.clear();
                my2controller.clear();
              });
            } else {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Invalid input'),
                      content: Text('Please enter numeric input inside cost'),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'))
                      ],
                    );
                  });
            }
          },
        ),
        bottomNavigationBar: CustomNavigationBar());
  }
}
