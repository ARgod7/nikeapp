import 'package:flutter/material.dart';
import 'package:nikeapp/components/navbar.dart';
import 'package:nikeapp/pages/cart_page.dart';
import 'package:nikeapp/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //to control the bottom naav bar
  int _index = 0;
  //to update the index
  void navigateBottomBar(int index) {
    setState(() {
      _index = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: IconThemeData(color: Colors.grey[100]),
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                size: 28,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          );
        },),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //logo
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/Logo_NIKE.svg.png',
                    width: 120,
                    //height: 100,
                    color: Colors.grey[100],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Divider(
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                //pages
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.grey[100],
                      size: 30,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.grey[100],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      size: 30,
                      color: Colors.grey[100],
                    ),
                    title: Text(
                      "About",
                      style: TextStyle(
                          color: Colors.grey[100],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, bottom: 24),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  size: 30,
                  color: Colors.grey[100],
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                      color: Colors.grey[100],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: _pages[_index],
    );
  }
}
