import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newtry/widgets/add_post.dart';
import 'package:newtry/widgets/post_card.dart';
import 'package:newtry/widgets/profile.dart';

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
  String beforeClickHelp = 'Click to get Help';
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
          child: Image.asset('images/bglogo.png'),
        ),
        ElevatedButton(
          onPressed: () {
            // Handle button press
            setState(() {
              buttonName = 'Medical';
              beforeClickHelp = 'Click to get Medical Help';
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
          beforeClickHelp,
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
      ],
    ),
  );
}

Widget buildCommunityScreen() {
  return Scaffold(
    backgroundColor: Colors.black12,
    // appBar: AppBar(
    //       title: const Center(
    //         child: Text(
    //           'HerShield',
    //           style: TextStyle(color: Colors.white),
    //         ),
    //       ),
    //       backgroundColor: Colors.black,
    //     ),
    body: const PostCard(),
  );
}

Widget buildProfileScreen() {
  return Scaffold(
    body: const ProfileScreen(),
  );
}

Widget buildAddPostScreen(){
  return Scaffold(
    // appBar: AppBar(
    //       title: const Center(
    //         child: Text(
    //           'HerShield',
    //           style: TextStyle(color: Colors.white),
    //         ),
    //       ),
    //       backgroundColor: Colors.black45,
    //     ),
    backgroundColor: Colors.black45,
    body: const AddPost(),
  );
}

Widget buildAreaProfilingScreen(){
  return Center();
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'HerShield',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: currentIndex == 2 ? buildHomeScreen() : currentIndex == 0 ? buildCommunityScreen() : currentIndex == 4 ? buildProfileScreen() : currentIndex == 1 ? buildAddPostScreen() : buildAreaProfilingScreen(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              label: 'Feed',
              icon: SizedBox(
                width: 30, // Adjust image width
                height: 30, // Adjust image height
                child: Image.asset('images/community.png'),
              )
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              label: 'Add',
              icon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("images/add_post.png"),
              )
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              label: 'HOME',
              icon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset("images/home.png"),
              )
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              label: 'Area',
              icon: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset("images/area_profile.png"),
            ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              label: 'Profile',
              icon: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset("images/account.png"),
            ),
            ),
          ],
          
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            }
            );
          },
        ),
      ),
    );
  }
}
