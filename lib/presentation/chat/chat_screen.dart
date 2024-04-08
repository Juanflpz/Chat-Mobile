import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: const Icon(Icons.heart_broken_outlined),
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://www.lifeandstylemag.com/wp-content/uploads/2017/06/shutterstock_editorial_5147277az.jpg?resize=1200%2C1200&quality=86&strip=all"),
          ),
        ),
        title: const Text("Mi amor"),
      ),
    );
  }
}
