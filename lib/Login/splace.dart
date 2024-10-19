import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grabdoc/Login/welcome.dart';

class Splace extends StatefulWidget {
  const Splace({super.key});

  @override
  State<Splace> createState() => _SplaceState();
}

class _SplaceState extends State<Splace> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const Welcome()))); // Navigate to another screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 90, 155),
      body: Center(
        child: Stack(
          children: [
            // First container with the bottom image
            Container(
              width: 414,
              height: 896,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image:
                      AssetImage('android/assets/Frame.png'), // Corrected path
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                    color: Colors.black, width: 3), // Optional border
                borderRadius:
                    BorderRadius.circular(12), // Optional rounded corners
              ),
            ),

            // Second container with the top image
            Positioned(
              top: 150,
              left: 130,
              child: Container(
                width: 150,
                height: 160,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                        'android/assets/Group 1.png'), // Corrected path
                    fit: BoxFit.cover,
                    opacity: 0.9, // Optional opacity
                  ),
                  border: Border.all(
                      color: Colors.white, width: 2), // Optional border
                  borderRadius:
                      BorderRadius.circular(12), // Optional rounded corners
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Example of the NextScreen for navigation

