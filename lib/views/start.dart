// start_page.dart
import 'package:flutter/material.dart';
import 'package:recipe/views/widgets/recipe_card.dart';
import 'package:recipe/views/home.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 232, 223), // Set the overall background color to orange
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu, color: Colors.black),
              SizedBox(width: 8),
              Text(
                'Nom Nom',
                style: TextStyle(fontSize: 21, color: Colors.black),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20), // Adjusted the height to move the text higher
            Text(
              'Welcome to',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            Text(
              'Nom Nom!',
              style: TextStyle(fontSize: 30, color: Colors.orange, fontWeight: FontWeight.bold), // Adjusted text color to white
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'A place where you can get an idea of what to eat for the day!',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Start Exploring',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
