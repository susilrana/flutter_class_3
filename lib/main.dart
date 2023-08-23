import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Home',
      home: NewApp(),
    ),
  );
}

class NewApp extends StatefulWidget {
  const NewApp({super.key});

  @override
  State<NewApp> createState() => _NewAppState();
}

var count = 0;

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 185, 203, 253),
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text(
            'Apple',
            style: TextStyle(color: Color.fromARGB(255, 234, 237, 149)),
          ),
          backgroundColor: Color.fromARGB(255, 132, 151, 245),
          actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "the count: ",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "0",
                style: TextStyle(fontSize: 20),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {
                      print(count);
                      setState(() {
                         count++;
                      });
                      print(count);
                    },
                    child: const Text("Plus", style: TextStyle(fontSize: 30)),
                  ),
                                TextButton(
                onPressed: () {
                  print(count);
                  setState(() {
                     count--;
                  });
                  print(count);
                },
                child: const Text("Minus", style: TextStyle(fontSize: 30)),
              )
                ],
              )
              
            ],
          ),
        ));
  }
}
