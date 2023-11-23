import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagas/second.dart';
//import 'package:flutter_application_1/srrvices/apiservice.dart';
// Import the SecondPage class from the separate file

class class_body extends StatelessWidget {
  final daysController = TextEditingController();
  final destinationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: 300, // Set the desired width for the form
        child: Column(
          children: [
            const Text(
              "Please enter your trip data and in a few moments you will be able to start connecting to the exciting landscapes",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'How many days are you traveling?'),
              controller: daysController,
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Destination for a trip?'),
              controller: destinationController,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => class_second(days:daysController.text ,dest: destinationController.text))
                );
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
