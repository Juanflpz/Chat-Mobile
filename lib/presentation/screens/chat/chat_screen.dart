import 'package:chat_app/domain/entities/message.dart';
import 'package:chat_app/presentation/providers/chat_provider.dart';
import 'package:chat_app/presentation/widgets/chat/her_msg_bubble.dart';
import 'package:chat_app/presentation/widgets/chat/my_msg_bubble.dart';
import 'package:chat_app/presentation/widgets/shared/msg_field_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.pink,
        //leading: const Icon(Icons.heart_broken_outlined),
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.lifeandstylemag.com/wp-content/uploads/2017/06/shutterstock_editorial_5147277az.jpg?resize=1200%2C1200&quality=86&strip=all"),
          ),
        ),
        title: const Text(
          "Mi amor",
          style: TextStyle(color: Colors.black),
        ),
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
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                //enlazar al único scroll que tenga el provider
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.msgList.length,
                itemBuilder: (context, index) {
                final msg = chatProvider.msgList[index];

                return (msg.fromWho == FromWho.hers)
                    ? const HerMessageBubble()
                    : MyMessageBubble(message: msg);
                /*
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
                */
              },
            )),

            ///caja de texto
            MessageFieldBox(
              onValue: (value) => chatProvider.sendMessage(value),
            ),
          ],
        ),
      ),
    );
  }
}
