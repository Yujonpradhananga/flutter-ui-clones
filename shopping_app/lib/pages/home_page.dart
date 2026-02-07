import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/components/bottom_nav_bar.dart';
import 'package:shopping_app/pages/shop_page.dart';
import 'package:shopping_app/pages/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigatorBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigatorBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu, color: Colors.black),
            );
          },
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Column(
          children: [
            //logo
            DrawerHeader(
              child: Image.asset(
                'lib/images/nikelogo.png',
                height: 250,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.grey),
            ),
            //other pages
            ListTile(leading: Icon(Icons.home)),
          ],
        ),
      ),

      body: _pages[_selectedIndex],
    );
  }
}
