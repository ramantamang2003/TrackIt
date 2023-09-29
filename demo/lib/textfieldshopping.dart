import 'package:flutter/material.dart';

class InputFieldShoppinglist extends StatelessWidget {
  final TextEditingController controller1;
  final TextEditingController controller2;

  InputFieldShoppinglist(
      {required this.controller1, required this.controller2});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Expanded(
            child: Container(
              child: TextField(
                controller: controller1,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: "Item",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextField(
                  controller: controller2,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      labelText: "Cost",
                      labelStyle:
                          TextStyle(color: Colors.black, fontSize: 25))),
            ),
          )),
        ],
      ),
    ]);
  }
}
