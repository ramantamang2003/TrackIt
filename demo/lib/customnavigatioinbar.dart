import 'package:demo/settingpage.dart';
import 'package:demo/shoppingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'addmoney.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.deepPurpleAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: IconButton(
                  onPressed: () {
                    Get.to(ShopppingPage());
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 40,
                  )),
            ),
            Expanded(
                child: IconButton(
                    onPressed: () {
                      Get.to(AddMoney());
                    },
                    icon: Icon(
                      Icons.attach_money,
                      size: 40,
                    ))),
            Expanded(
                child: IconButton(
                    onPressed: () {
                      Get.to(SettingMenu());
                    },
                    icon: Icon(
                      Icons.settings,
                      size: 40,
                    )))
          ],
        ));
  }
}
