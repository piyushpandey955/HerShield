import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Help';
  String afterClickHelp = 'Click to get Help';
  int currentIndex = 1;
  Color buttonColor = Colors.red;

  Widget buildHomeScreen() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 200, // Adjust image width
          height: 200, // Adjust image height
          child: Image.asset('images/logo.png'),
        ),
        ElevatedButton(
          onPressed: () {
            // Handle button press
            setState(() {
              buttonName = 'Medical';
              afterClickHelp = 'Click to get Medical Help';
              buttonColor = Colors.blueAccent;
            });
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(200, 200), // Adjust button size as needed
            backgroundColor: buttonColor, // Change button background color to red
            foregroundColor: Colors.white, // Change text color to white
          ),
          child: Text(
            buttonName,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        Text(
          afterClickHelp,
          style: const TextStyle(fontSize: 25),
        ),
      ],
    ),
  );
}

Widget buildCommunityScreen() {
  return SizedBox();
}

Widget buildProfileScreen() {
  return Center();
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'HerShield',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: currentIndex == 1 ? buildHomeScreen() : currentIndex == 0 ? buildCommunityScreen() : buildProfileScreen(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: 'Feed',
              icon: SizedBox(
                width: 30, // Adjust image width
                height: 30, // Adjust image height
                child: Image.asset('images/community.png'),
              )
            ),
            BottomNavigationBarItem(
              label: 'HOME',
              icon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("images/home.png"),
              )
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset("images/account.png"),
            ),
            )
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
