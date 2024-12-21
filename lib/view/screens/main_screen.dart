import 'package:arman_ecommerce_node_backend/view/screens/nav_screens/account_screen.dart';
import 'package:arman_ecommerce_node_backend/view/screens/nav_screens/cart_screen.dart';
import 'package:arman_ecommerce_node_backend/view/screens/nav_screens/favorite_screen.dart';
import 'package:arman_ecommerce_node_backend/view/screens/nav_screens/home_screen.dart';
import 'package:arman_ecommerce_node_backend/view/screens/nav_screens/stores_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    FavoriteScreen(),
    StoresScreen(),
    CartScreen(),
    AccountScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(
            selectedItemColor: Colors.purple,
              unselectedItemColor: Colors.grey,
              currentIndex: _pageIndex,
              onTap: (value) {
                setState(() {
                  _pageIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              width: _pageIndex == 0 ? 30.0 : 25.0,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Image.asset('assets/icons/love.png', width: _pageIndex == 1 ? 30.0 : 25.0, ),
            label: "Favorite"),
        BottomNavigationBarItem(
            icon: Image.asset('assets/icons/mart.png', width: _pageIndex == 2 ? 30.0 : 25.0,),
            label: "Store"),
        BottomNavigationBarItem(
            icon: Image.asset('assets/icons/cart.png', width: _pageIndex == 3 ? 30.0 : 25.0,),
            label: "Cart"),
        BottomNavigationBarItem(
            icon: Image.asset('assets/icons/user.png', width: _pageIndex == 4 ? 30.0 : 25.0,),
            label: "Account"),
      ]),
      body: _pages[_pageIndex],
    );
  }
}
