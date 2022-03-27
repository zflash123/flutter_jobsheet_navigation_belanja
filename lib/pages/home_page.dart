import 'package:flutter/material.dart';

import '../models/item.dart';

class HomePage extends StatelessWidget{
  HomePage({Key? key}) : super(key: key);
  final List<Item> items = [
    Item(name: 'Gulaku 1 kg', image: 'assets/images/gulaku.jpg', price: 12500),
    // Item(name: 'Salt', image:, price: 2000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Belanjaan"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          itemBuilder: (context, index){
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        )
                      )
                    ]
                  ),
                ),
              ),
            );
          }
        ),
      )
    );
  }
}
