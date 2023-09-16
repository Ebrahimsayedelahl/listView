import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> imagePaths = [
      'assets/img1.jpg',
      'assets/img2.jpg',
      'assets/img3.jpg',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Gallery',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 0.8,
            ),
            itemCount: imagePaths.length * 5,
            itemBuilder: (context, index) {
              final imageIndex = index % imagePaths.length;
              return Container(

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:
                  Image.asset(
                    imagePaths[imageIndex],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}