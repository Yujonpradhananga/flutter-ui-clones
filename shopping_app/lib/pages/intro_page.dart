import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset('lib/images/nikelogo.png', height: 250),
          ),
          const SizedBox(height: 25),
          Text(
            "just do it nigga",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            "brand new swag",
            style: TextStyle(fontSize: 10, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          //title
        ],
      ),
    );
  }
}
