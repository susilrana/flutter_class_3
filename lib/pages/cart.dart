import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 216, 224, 247),
        appBar: AppBar(
          title: const Text("Cart Page"),
        ),
        body: const SizedBox(
          child: Image(
            fit: BoxFit.cover,
            height: double.infinity,
            image: AssetImage('assets/images/fly.jpg'),
          ),
        ));
  }
}
