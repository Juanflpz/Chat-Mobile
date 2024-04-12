import 'package:chat_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

//changenotifier simplemente indica que puede notificar cuando hay cambios
class ChatProvider extends ChangeNotifier {
  List<Message> msgList = [
    Message(text: "HABLÁMELO", fromWho: FromWho.me),
    Message(text: "Tú me amas?", fromWho: FromWho.me)
  
  ];

  Future<void> sendMessage(String text) async {
    //implementar
  }
}
