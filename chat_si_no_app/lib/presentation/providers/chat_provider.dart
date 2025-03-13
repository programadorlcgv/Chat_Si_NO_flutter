import 'package:chat_si_no_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{

  List<Message> messageList = [
    Message(text: "hola terminator", fromWho: FromWho.me),
    Message(text: "Vas a destruir a Connor?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async{

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
  }

}