import 'package:flutter/material.dart';

class class_header extends StatelessWidget {
  const class_header({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,  // Set your desired height
          width: double.infinity,  // Set your desired width or use double.infinity for full width
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage("background_image.jpg"),
              alignment: Alignment.center,  // Center the image
              fit: BoxFit.cover,  // Cover the entire container
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.dstATop,
              ),
            ),
          ),
        ),
       
        Positioned(
          top: 50, // Adjust the value to move the text higher or lower
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              color: Colors.black54,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Text(
                "Welcome, just a moment and you have a perfect plan for your next vacation",
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
