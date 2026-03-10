// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:nti_flutter/data/item.dart';

class BestSeller extends StatelessWidget {
  final List<Item> list;
  const BestSeller({super.key, required this.list});
  @override
  Widget build(BuildContext context) {
    /// through Arguments
    // final received = ModalRoute.of(context)?.settings.arguments as List<Item>;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 149, 218, 252),
          title: const Text('Best Seller'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTileItem(item: list[index]),
                // child: ListTileItem(item: received[index]),
              );
            },
            itemCount: list.length,
            //  itemCount: received.length,
          ),
        ));
  }
}

class ListTileItem extends StatelessWidget {
  const ListTileItem({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: const Color.fromARGB(255, 35, 53, 83),
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      title: Text(item.name, style: TextStyle(color: Colors.white)),
      leading: Container(
        child: Center(
          child: Text(
            item.id.toString(),
            style: TextStyle(color: Colors.black),
          ),
        ),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 223, 220, 220),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
