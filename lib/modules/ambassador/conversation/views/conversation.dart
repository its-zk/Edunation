import 'package:flutter/material.dart';

class Conversation extends StatelessWidget {
  const Conversation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(82, 193, 227, 1),
        automaticallyImplyLeading: false,
        title: const Text("Conversations"),
      ),
      body: const SafeArea(child: Column()),
    );
  }
}
