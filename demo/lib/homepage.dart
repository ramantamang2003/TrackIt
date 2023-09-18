// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(actions: [Text("ANI TV")]),
//       body: Container(
//         child: Row(
//           children: [
//             Container(child: Text("hii")),
//             Expanded(
//               child: Container(
//                 alignment: Alignment.topRight,
//                 child: Icon(
//                   Icons.search,
//                   size: 50,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
        //Container(
        //   decoration: BoxDecoration(
        // image: DecorationImage(
        //     image: AssetImage('assets/image/background.jpg'))),
        Scaffold(
            backgroundColor: Colors.white,
            body: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 40),
                child: Text(
                  "Shopping List",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                  ),
                  Expanded(
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelText: "Item",
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              labelText: "Cost",
                              labelStyle: TextStyle(
                                  color: Colors.black, fontSize: 25))),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ]),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.add,
                size: 40,
              ),
            ));
  }
}
