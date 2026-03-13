// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Search(),
            SizedBox(height: 20),
            BannerSlider(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text('Categories',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 90,
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  shrinkWrap: true,
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 80,
                      margin: EdgeInsets.only(right: 12),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 215, 230, 242),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            categories[index].icon,
                            size: 30,
                            color: Colors.black87,
                          ),
                          SizedBox(height: 5),
                          Text(
                            categories[index].title,
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text('Popular Products',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 190,
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  shrinkWrap: true,
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 150,
                        // padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 215, 230, 242),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image(
                                  height: 120,
                                  image:
                                      AssetImage('assets/images/banner1.png'),
                                  fit: BoxFit.cover),
                            ),
                            SizedBox(height: 5),
                            Text(
                              categories[index].title,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    ));
  }
}

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: 70,
                  padding:
                      EdgeInsets.only(left: 12, right: 26, top: 12, bottom: 12),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 126, 184, 231),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 0,
                  child: SizedBox(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 215, 230, 242),
                        hintText: 'search product..',
                        prefixIcon: Icon(
                          Icons.search,
                          // color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 126, 184, 231),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class BannerSlider extends StatelessWidget {
  final List<String> banners = [
    "assets/images/banner1.png",
    "assets/images/banner1.png",
    "assets/images/banner1.png",
    "assets/images/banner1.png",
    "assets/images/banner1.png",
  ];

  BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 160,
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1,
        ),
        items: banners.map((image) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Category {
  final String title;
  final IconData icon;
  Category({required this.title, required this.icon});
}

final List<Category> categories = [
  Category(title: 'Electronics', icon: Icons.electrical_services_outlined),
  Category(title: 'Fashion', icon: Icons.checkroom_outlined),
  Category(title: 'Home & Garden', icon: Icons.grass_outlined),
  Category(title: 'Sports', icon: Icons.sports_basketball_outlined),
  Category(title: 'Toys', icon: Icons.toys_outlined),
  Category(title: 'Electronics', icon: Icons.electrical_services_outlined),
  Category(title: 'Fashion', icon: Icons.checkroom_outlined),
  Category(title: 'Home & Garden', icon: Icons.grass_outlined),
  Category(title: 'Sports', icon: Icons.sports_basketball_outlined),
  Category(title: 'Toys', icon: Icons.toys_outlined),
];
