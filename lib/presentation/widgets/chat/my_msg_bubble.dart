import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Mándeme pues un pico",
                style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
