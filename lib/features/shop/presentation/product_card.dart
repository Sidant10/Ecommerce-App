import 'package:ecommerce_app/features/shop/presentation/product_detail.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
    ProductCard(
        {super.key,
        required this.productImage,
        required this.productTitle,
        required this.productPrice,
        });

    final String productImage;
    final String productTitle;
    final String productPrice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Column(
          children: [
            Expanded(child: Image.asset(productImage,fit:BoxFit.fill)),
            Text(productTitle),
            Text(productPrice)
          ],
        ),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage(productName: 'productName', productDescription: 'productDescription', productPrice: 1500, productImage: productImage,)),);
      },
    );
  }
}
