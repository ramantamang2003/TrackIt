import 'package:demo/customnavigatioinbar.dart';
import 'package:demo/settingpage.dart';
import 'package:demo/shoppingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddMoney extends StatelessWidget {
  const AddMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      backgroundColor: Colors.blueGrey[100],
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
