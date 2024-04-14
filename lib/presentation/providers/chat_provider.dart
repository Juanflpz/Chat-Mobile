import 'package:chat_app/config/themes/helpers/get_yes_no_answer.dart';
import 'package:chat_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

//changenotifier simplemente indica que puede notificar cuando hay cambios
class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> msgList = [
    /*
    Message(text: "HABLÁMELO", fromWho: FromWho.me),
    Message(text: "Tú me amas?", fromWho: FromWho.me)*/
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) {
      return;
    }

    ///este mensaje siempre va a ser mío pq ella no ingresa
    final newMessage = Message(text: text, fromWho: FromWho.me);
    msgList.add(newMessage);

    if (text.endsWith("?")) {
      await herReply();
    }

    //es lo mismo que setState()
    //notifica a todos los que escuchan ese cambio con el ChangeNotifier
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> herReply() async {
    final herMsg = await getYesNoAnswer.getAnswer();
    msgList.add(herMsg);
    notifyListeners();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.decelerate);
  }
}
