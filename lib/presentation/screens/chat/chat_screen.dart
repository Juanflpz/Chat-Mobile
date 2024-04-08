import 'package:chat_app/presentation/widgets/chat/msg_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        //leading: const Icon(Icons.heart_broken_outlined),
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.lifeandstylemag.com/wp-content/uploads/2017/06/shutterstock_editorial_5147277az.jpg?resize=1200%2C1200&quality=86&strip=all"),
          ),
        ),
        title: const Text("Mi amor", style: TextStyle(color: Colors.white),),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  /*
  const _ChatView({
    super.key,
  });
  */
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const MyMessageBubble();
              },
            )),
            const Text("Mundo")
          ],
        ),
      ),
    );
  }
}