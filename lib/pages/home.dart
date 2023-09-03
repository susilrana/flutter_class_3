import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 64, 168, 132),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                height: 100,
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/mona.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                            // borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        ),
                        const Text(
                          "Your Story",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/nana.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                            border: Border.all(
                              width: 1.5,
                              color: const Color.fromARGB(255, 249, 104, 93),
                            ),
                          ),
                        ),
                        const Text(
                          "Your Story",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/fish.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                          ),
                        ),
                        const Text(
                          "Your Story",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/apple.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                            border: Border.all(
                              width: 1.5,
                              color: const Color.fromARGB(255, 249, 104, 93),
                            ),
                          ),
                        ),
                        const Text(
                          "Your Story",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/apple.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                            border: Border.all(
                              width: 1.5,
                              color: const Color.fromARGB(255, 249, 104, 93),
                            ),
                          ),
                        ),
                        const Text(
                          "Your Story",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 60,
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/mona.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "World of nature",
                          style: GoogleFonts.gothicA1(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Bali, indonesia",
                          style: GoogleFonts.gothicA1(fontSize: 12),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(160, 0, 10, 0),
                      child: const Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 400,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/lion.jpg'),
                ),
              ),
              Container(
                height: 40,
                padding: const EdgeInsets.all(3),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: const Icon(
                        Icons.favorite,
                        color: Color.fromARGB(255, 233, 30, 77),
                        size: 29,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: const Image(
                        image: AssetImage("assets/images/comment.png"),
                        height: 22,
                        width: 22,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: const Image(
                        image: AssetImage("assets/images/share.png"),
                        height: 24,
                        width: 24,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(225, 0, 10, 0),
                      child: const Image(
                        image: AssetImage("assets/images/saves.png"),
                        height: 26,
                        width: 26,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 24,
                padding: const EdgeInsets.fromLTRB(13, 0, 5, 5),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/fish.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                        border: Border.all(
                          width: 1,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),

                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/mona.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                        border: Border.all(
                          width: 1,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),

                    // Positioned(
                    //   right: 10,
                    //   child: Container(
                    //     height: 20,
                    //     width: 20,
                    //     decoration: BoxDecoration(
                    //       image: const DecorationImage(
                    //         image: AssetImage('assets/images/nana.jpg'),
                    //         fit: BoxFit.fill,
                    //       ),
                    //       shape: BoxShape.circle,
                    //       color: Colors.yellow,
                    //       border: Border.all(
                    //         width: 1,
                    //         color: Color.fromARGB(255, 255, 255, 255),
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    //  Positioned(
                    //   right:20,
                    //   child: Container(
                    //     height: 20,
                    //     width: 20,
                    //     decoration: BoxDecoration(
                    //       image: const DecorationImage(
                    //         image: AssetImage('assets/images/fish.jpg'),
                    //         fit: BoxFit.fill,
                    //       ),
                    //       shape: BoxShape.circle,
                    //       color: Colors.yellow,
                    //       border: Border.all(
                    //         width: 1,
                    //         color: Color.fromARGB(255, 255, 255, 255),
                    //       ),
                    //     ),
                    //   ),
                    // )

                    const Text(
                      "Liked by ",
                    ),
                    const Text("Pred123",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const Text(" and "),
                    const Text("122 others",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                height: 24,
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Ben100",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(" just loved this picture."),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 15,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 23,
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Robin900",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(" just loved this picture."),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 14,
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "8 hours ago",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 82, 82, 82),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 45,
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/mona.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        const Text(
                          "Add a comment...",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 112, 112, 112),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.yellow,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
