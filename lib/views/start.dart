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
              'images/Chef.png', 
              height: 350, 
              width: double.infinity,  
              fit: BoxFit.fitHeight,  
            ),
            SizedBox(height: 20),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange, // Set the border color
                     width: 2.0, // Set the border width
                   ),
                    borderRadius: BorderRadius.circular(8.0), // Set border radius as needed
         ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Welcome to',
              style: TextStyle(fontSize: 24, color: Colors.orange, fontWeight: FontWeight.bold),
              ),
          ),
            ),
          SizedBox(height: 3), // Add some spacing between the two Text widgets
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.orange, // Set the border color
                width: 2.0, // Set the border width
              ),
              borderRadius: BorderRadius.circular(8.0), // Set border radius as needed
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Nom Nom!',
                 style: TextStyle(fontSize: 30, color: Colors.orange, fontWeight: FontWeight.bold),
             ),
            ),
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
