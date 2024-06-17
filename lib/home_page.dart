import 'package:flutter/material.dart';
import 'package:shop_app_flutter/cart_page.dart';
import 'package:shop_app_flutter/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = const [
    ProductList(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        iconSize: 30,
        fixedColor: Colors.black,
        selectedFontSize: 0,
        unselectedItemColor: Colors.black38,
        unselectedFontSize: 0,
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home_filled,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.shopping_cart_sharp),
          ),
        ],
      ),
    );
  }
}
