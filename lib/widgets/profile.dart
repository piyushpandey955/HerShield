import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // String _aadharCard = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.pink[100],
      //   title: Text('User Profile'),
      //   centerTitle: true, 
      // ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage:NetworkImage("https://images.unsplash.com/photo-1712313275295-105a8ab7bb1f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D"),
                  radius: 60, 
                ),
                SizedBox(height: 20),
                Text(
                  'Ananya Yadav',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                   'ananya@example.com',
                   style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                'Aadhar Number: 7654-****-****',
                textAlign: TextAlign.left,
                style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                ),
              ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                },
                child: Text('Edit Profile'),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}