import 'package:chat_si_no_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier{

  List<Message> message = [
    Message(text: "hola terminator", fromWho: FromWho.me),
    Message(text: "Vas a destruir a Connor", fromWho: FromWho.his),
  ];

  Future<void> sendMessage(String text) async{
    // Todo: implementar Metodo
  }

}