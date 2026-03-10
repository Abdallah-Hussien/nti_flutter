// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nti_flutter/screens/home/best_seller.dart';
import 'package:nti_flutter/data/item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 149, 218, 252),
          title: const Text('Home'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 20),
              Text('Welcome to the Home Screen!'),
              SizedBox(height: 20),
              HeadingSection(),
              SizedBox(height: 12),
              BestSellerList()
            ],
          ),
        ));
  }
}

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          'Best Seller',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        )),
        TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  /// send data through constractor
                  return BestSeller(list: items);
                },

                /// send data through arguments
                //settings: RouteSettings(arguments: items)),
              ));
              //Navigator.pushNamed(context, '/bestSeller', arguments: items);
            },
            child: Text(
              'See all',
              style: TextStyle(fontSize: 16),
            )),
      ],
    );
  }
}

class BestSellerList extends StatelessWidget {
  const BestSellerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            width: 110,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 35, 53, 83),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                items[index].name,
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: 5,
      ),
    );
  }
}
