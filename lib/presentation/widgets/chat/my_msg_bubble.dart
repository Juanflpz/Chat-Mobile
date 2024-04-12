import 'package:chat_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  final Message message;
  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme; //obtiene el color del tema
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          //height: 10,
          //width: 10,
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:
                Text(message.text, style: const TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
