import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pertemuan10_2306003/models/product_models.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductModel product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("detail produk")),
      body: Padding(
        padding: .all(20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            product.image.isNotEmpty
                ? Image.memory(
                    base64Decode(product.image),
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  )
                : Text(
                    product.name,
                    style: TextStyle(fontSize: 24, fontWeight: .bold),
                  ),
            const SizedBox(height: 10),
            Text("Rp ${product.price}"),
            const SizedBox(height: 10),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}
