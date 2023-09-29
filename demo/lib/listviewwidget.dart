import 'package:demo/shoppingpage.dart';

import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  // ListViewWidget({super.key});
  final List<ListItem> Items;
  ListViewWidget({required this.Items});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: Items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                '${index + 1}.',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ITEM : ${Items[index].text1}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text('COST : ${Items[index].text2}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            );
          }),
    );
  }
}
