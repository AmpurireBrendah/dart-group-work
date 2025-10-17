import 'package:flutter/material.dart';

void main() {
  runApp(ProfileCardApp());
}

class ProfileCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[50],
        appBar: AppBar(
          title: Text("My Profile Card"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Picture
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              SizedBox(height: 12),
              
              // Name
              Text(
                "Ampurire Brendah",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[800],
                ),
              ),
              
              // Title
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.2,
                  color: Colors.deepPurple[400],
                ),
              ),
              
              SizedBox(height: 20),
              
              // Divider
              Divider(
                thickness: 1,
                indent: 40,
                endIndent: 40,
              ),
              
              SizedBox(height: 10),
              
              // Contact Info - Phone
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone, color: Colors.deepPurple),
                  SizedBox(width: 8),
                  Text("+256 762515120"),
                ],
              ),
              
              SizedBox(height: 8),
              
              // Contact Info - Email
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.deepPurple),
                  SizedBox(width: 8),
                  Text("ampurirebrendah2@gmail.com"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
