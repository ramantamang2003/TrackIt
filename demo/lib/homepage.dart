// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // actions: [
      //   Align(
      //     alignment: Alignment.bottomRight,
      //     child: FloatingActionButton.extended(
      //         onPressed: () {},
      //         icon: IconButton(
      //             onPressed: () {},
      //             icon: Icon(
      //               Icons.add,
      //               size: 30,
      //             )),
      //         label: Text(
      //           "Add",
      //           style: TextStyle(fontSize: 20),
      //         )),
      //   )
      // ],
      // actions: [
      //   IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.add,
      //         color: Colors.amber,
      //         size: 50,
      //       ))
      // ],
      // ),
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Text(
            "Shopping List",
            style: TextStyle(
                color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("1"),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Item"),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "cost")),
            )),
          ],
        ),
      ]),
    );
  }
}
