// start_page.dart
import 'package:flutter/material.dart';
import 'package:recipe/views/widgets/recipe_card.dart';
import 'package:recipe/views/home.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 232, 223),
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
            // Add the image widget here
            Image.asset(
              'images/Chef.png', // Replace 'your_image.png' with the actual path to your image asset
              height: 410, // Adjust the height of the image as needed
              width: double.infinity, // Make the image take the full width of the screen
              fit: BoxFit.cover, // Adjust the BoxFit property based on your image requirements
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to',
              style: TextStyle(fontSize: 24, color: Colors.orange, fontWeight: FontWeight.bold),
            ),
            Text(
              'Nom Nom!',
              style: TextStyle(fontSize: 30, color: Colors.orange, fontWeight: FontWeight.bold),
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
            SizedBox(height: 30),
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
