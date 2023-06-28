import 'package:ecommerce_app/features/cart/presentation/cart_page.dart';
import 'package:ecommerce_app/features/home/presentation/home_page.dart';
import 'package:ecommerce_app/features/profile/presentation/profile_page.dart';
import 'package:ecommerce_app/features/shop/presentation/shop_page.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentPageNo = 0;
  
  List<Widget> pages = [
    HomePage(),
    ShopPage(),
    CartPage(),
    ProfilePage()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageNo,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.deepPurple,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop,color: Colors.deepPurple,), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.deepPurple,), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.deepPurple,), label: "Profile"),

        ],
        onTap: (int index){
          setState(() {
            currentPageNo = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black26,
        unselectedItemColor: Colors.black,
      ),
      body: pages[currentPageNo],
    );
  }
}
