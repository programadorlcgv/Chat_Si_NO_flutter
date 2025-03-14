import 'package:chat_si_no_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{

  final chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: "hola terminator", fromWho: FromWho.me),
    Message(text: "Vas a destruir a Connor?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async{

    if( text.isEmpty ) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async{

    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent, 
      duration: const Duration(seconds: 1), 
      curve: Curves.easeInSine
    );
  }
}