// import 'package:exarcise_flutter_project/Practice_screens/container.dart';
// import 'package:exarcise_flutter_project/Practice_screens/animated_card.dart';
import 'package:exarcise_flutter_project/Practice_screens/product_grid_page.dart';
// import 'package:exarcise_flutter_project/hero_home_page.dart';
// import 'package:exarcise_flutter_project/Practice_screens/image_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductGridPage(),
    );
  }
}