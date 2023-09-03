import 'package:flutter/material.dart';
import 'package:test_3/pages/home.dart';
import 'package:test_3/pages/cart.dart';
import 'package:test_3/pages/login.dart';
import 'package:test_3/pages/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: LoginPage(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        //title:  Text("Home Page", style: GoogleFonts.tulpenOne()),
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Image.asset(
          "assets/images/insta.png",
          fit: BoxFit.contain,
          height: 40,
        ),
        // title: Text("Home Page", style: GoogleFonts.luckiestGuy(fontSize: 20, color:Colors.black),),
        //const Icon(FontAwesomeIcons.facebookMessenger, color: Colors.black, ),
        actions: [
          Column(
            children: [
              Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.fromLTRB(0, 15, 10, 0),
                  child: const Image(
                    image: AssetImage('assets/images/mess.png'),
                    fit: BoxFit.fill,
                  )),
            ],
          ),
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 189, 221, 247),
        currentIndex: currentIndex,
        onTap: (tappedIndex) {
          setState(() {
            currentIndex = tappedIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      // drawer: const Drawer(
      //   child: SizedBox(
      //     height: double.infinity,
      //     width: 100,
      //     child: Image(
      //       image: AssetImage('assets/images/apple.png'),
      //     ),
      //   ),
      // ),
    );
  }
}
