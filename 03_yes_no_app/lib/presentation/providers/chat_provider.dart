import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  List<Message> messagesList = [];
  // funcion que se encarga de obtener la respuesta del usuario
  Future<void> userReply(String text) async {
    final userMessage = await getYesNoAnswer.getAnswer();

    messagesList.add(userMessage);
    moveScrollToButton();
    notifyListeners();
  }

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    messagesList.add(Message(text: text, type: MessageType.sent));

    if (text.endsWith('?')) {
      userReply(text);
    }

    moveScrollToButton();
    notifyListeners();
  }

  void moveScrollToButton() {
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeOut,
    );
  }
}
