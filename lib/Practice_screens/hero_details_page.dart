import 'package:flutter/material.dart';

class HeroDetailPage extends StatelessWidget {
  final Map<String, dynamic> item;

  const HeroDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: item['color'],
      appBar: AppBar(
        backgroundColor: item['color'],
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Hero(
          tag: item['id'],
          child: Material(
            color: item['color'],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  item['icon'],
                  size: 130,
                  color: Colors.white,
                ),
                const SizedBox(height: 25),
                Text(
                  item['title'],
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}