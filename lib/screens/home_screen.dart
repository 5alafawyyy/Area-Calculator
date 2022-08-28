import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.lightbulb_outline,
        ),
      ),
      persistentFooterButtons: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_a_photo,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_a_photo,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_a_photo,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_a_photo,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_a_photo,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_a_photo,
          ),
        ),
      ],
    );
  }
}
