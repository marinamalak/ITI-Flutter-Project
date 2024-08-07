import 'package:flutter/material.dart';

class Descrption extends StatelessWidget {
  const Descrption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Description',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(17.0),
        child: Column(
          children: [
            Text(
              'Welcome to Product Explorer!🌟',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Discover and manage a vast range of products with ease. Here’s what you can do with our app:',
              style: TextStyle(color: Color.fromARGB(255, 109, 4, 122)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '-Explore a Wide Range of Products:',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                ' Browse through diverse categories, from electronics to fashion, with detailed information and high-quality images.',
                style: TextStyle(color: Color.fromARGB(255, 109, 4, 122))),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '-Find Exactly What You Need:',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                ' Use advanced search and filters to quickly locate products by category, price, and more.',
                style: TextStyle(color: Color.fromARGB(255, 109, 4, 122))),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '-View Detailed Product Information',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                'Access comprehensive descriptions, specifications, and pricing to make informed choices.',
                style: TextStyle(color: Color.fromARGB(255, 109, 4, 122))),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '-Save and Manage Favorites:',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text('Create wishlists and keep track of your favorite products.',
                style: TextStyle(color: Color.fromARGB(255, 109, 4, 122))),
          ],
        ),
      ),
    );
  }
}
