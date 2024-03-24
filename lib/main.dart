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
  int currentIndex = 0;
  Color buttonColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Shield',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: currentIndex == 0 ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200, // Adjust image width
                height: 200, // Adjust image height
                child: Image.asset('images/logo.jpg'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle button press
                  setState(() {
                    buttonName = 'Medical';
                    afterClickHelp = 'Click to get Medical Help';
                    buttonColor = Colors.orange;
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
          ) : const SizedBox(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'HOME',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Person',
              icon: Icon(Icons.person),
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
