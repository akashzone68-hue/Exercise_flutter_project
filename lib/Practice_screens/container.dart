import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            //a container card with rounded corners (radius 20) and blue background
            Container(
              margin: EdgeInsets.all(10),
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: Colors.blue,
                gradient: LinearGradient(colors: [
                  const Color.fromARGB(255, 1, 90, 162),
                  const Color.fromARGB(255, 248, 161, 114),
                  const Color.fromARGB(255, 247, 211, 200),
                  const Color.fromARGB(255, 158, 157, 157)
                ]),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(6, 10)
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card container',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'a container card with rounded corners (radius 20) and blue background',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            //Make a circular container with an image inside
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber , width: 2),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://picsum.photos/400/300',
                  ),
                  fit:
                      BoxFit.cover, // Keeps the panda centered and fills the circle
                ),
          
              ),
            ),
        ],
      ),
    );
  }
}
