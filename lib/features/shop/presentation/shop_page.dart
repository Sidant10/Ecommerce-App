import 'package:ecommerce_app/features/shop/presentation/product_card.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Shop page',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.deepOrange,
              centerTitle: true,
            ),
            body: Column(children: [
              // Name of the tabs will here //
              TabBar(labelColor: Colors.deepOrange, tabs: [
                Center(child: Tab(text: 'Umbrella')),
                Center(
                    child: Tab(
                      text: 'CAR',
                    )),
                Center(
                    child: Tab(
                      text: 'VR',

                    )),
              ]),
              Expanded(
                child: TabBarView(children: [
                  GridView.builder(
                    itemCount: 8,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemBuilder: (context, index) {
                      // Get the clothes product data

                      return ProductCard(
                          productImage: "assets/AppImage.jpg",
                          productTitle: "umbrella",
                          productPrice: "Rs:100");
                    },
                  ),
                  GridView.builder(
                    itemCount: 10, // Replace with actual item count for Foods
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemBuilder: (context, index) {
                      // Replace with logic to display Foods products
                      return ProductCard(
                          productImage: "assets/spiderman.jpg",
                          productTitle: "GTR",
                          productPrice: "Rs:15000000");

                    },
                  ),
                  GridView.builder(
                    itemCount: 8,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemBuilder: (context, index) {
                      // Get the clothes product data

                      return ProductCard(
                          productImage: "assets/books.jpg",
                          productTitle: "VR Set",
                          productPrice: "Rs:25000");
                    },
                  ),

                ]),
              ),
              //When we select the tabbar which page will be selected is defined here
            ])));
  }
}