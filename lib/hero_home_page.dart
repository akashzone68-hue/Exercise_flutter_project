import 'package:exarcise_flutter_project/Practice_screens/hero_details_page.dart';
import 'package:flutter/material.dart';

class HeroHomePage extends StatelessWidget {
  const HeroHomePage({super.key});

  final List<Map<String, dynamic>> items = const [
    {
      'id': 'hero1',
      'title': 'Image Hero',
      'color': Colors.blue,
      'icon': Icons.image,
    },
    {
      'id': 'hero2',
      'title': 'Icon Hero',
      'color': Colors.orange,
      'icon': Icons.favorite,
    },
    {
      'id': 'hero3',
      'title': 'Text Hero',
      'color': Colors.green,
      'icon': Icons.text_fields,
    },
    {
      'id': 'hero4',
      'title': 'Container Hero',
      'color': Colors.purple,
      'icon': Icons.crop_square,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation Examples'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          final item = items[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => HeroDetailPage(item: item),
                ),
              );
            },
            child: Hero(
              tag: item['id'],
              child: Material(
                color: item['color'],
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item['icon'],
                      size: 55,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      item['title'],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}