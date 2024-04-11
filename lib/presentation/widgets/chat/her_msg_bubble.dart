import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme; //obtiene el color del tema
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          //height: 10,
          //width: 10,
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:
                Text("Hola patisucio", style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 10),

        //todo: image
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //obtener el tamaño de la pantalla
    //print(size);
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
            "https://yesno.wtf/assets/no/23-5fe6c1ca6c78e7bf9a7cf43e406fb8db.gif",
            width: size.width * 0.7,
            height: 150,
            fit: BoxFit.cover));
  }
}