import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_details_page.dart';

class ProductGridPage extends StatelessWidget {
  ProductGridPage({super.key});

  final List<Product> products = [
    Product(
      id: 1,
      name: 'Headphone',
      image: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500',
      price: 1200,
      description: 'High quality wireless headphone with amazing sound.',
    ),
    Product(
      id: 2,
      name: 'Smart Watch',
      image: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500',
      price: 2500,
      description: 'Modern smartwatch with fitness tracking features.',
    ),
    Product(
      id: 3,
      name: 'Camera',
      image: 'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500',
      price: 15000,
      description: 'Professional camera for capturing beautiful moments.',
    ),
    Product(
      id: 4,
      name: 'Shoes',
      image: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500',
      price: 3200,
      description: 'Comfortable and stylish shoes for everyday use.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Products'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),

        child: GridView.builder(
          itemCount: products.length,

          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),

          itemBuilder: (context, index) {
            final product = products[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailsPage(product: product),
                  ),
                );
              },

              child: Card(
                elevation: 4,
                clipBehavior: Clip.antiAlias,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Expanded(
                      child: Hero(
                        tag: 'product-${product.id}',

                        child: Image.network(
                          product.image,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10),

                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text(
                            '৳${product.price}',
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}