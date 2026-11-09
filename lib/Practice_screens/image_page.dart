import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Image.network(
        //   'https://picsum.photos/200/300',
        //   width: 200,
        //   height: 200,
        //   fit: BoxFit.cover,
        //   loadingBuilder: (context, child, progress) {
        //     if (progress == null) return child;
        //     return CircularProgressIndicator();
        //   },
        //   errorBuilder: (context, error, stack) {
        //     return Icon(Icons.error, size: 50);
        //   },
        // ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(
            'https://i.pravatar.cc/150',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
