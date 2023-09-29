import 'package:demo/customnavigatioinbar.dart';
import 'package:demo/shoppingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'addmoney.dart';

class SettingMenu extends StatelessWidget {
  List Object = [
    Icon(
      Icons.account_circle_rounded,
      size: 50,
    ),
    Icon(
      Icons.lock_reset,
      size: 50,
    ),
    Icon(
      Icons.dark_mode,
      size: 50,
    ),
    Icon(Icons.language, size: 50),
    Icon(Icons.help, size: 50),
    Icon(Icons.heat_pump_rounded, size: 50)
  ];
  var Names = [
    'My Profile',
    'Change Password',
    'Dark Mode',
    'Language',
    'Help',
    'Rate Us'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Object[index],
              title: Text(Names[index]),
              trailing: Icon(
                Icons.arrow_right,
                size: 35,
              ),
            );
          },
          itemCount: Object.length,
          itemExtent: 80,
        ),
        backgroundColor: Colors.blueGrey[100],
        bottomNavigationBar: CustomNavigationBar());
  }
}
