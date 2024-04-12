//aquí va código puro de Dart, nada de widgets
enum FromWho { me, hers }

class Message {
  //podría agregar el leído y todo eso
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  Message({required this.text, this.imageUrl, required this.fromWho});
}
