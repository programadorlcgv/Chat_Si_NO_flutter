import 'package:chat_si_no_app/domain/entities/message.dart';
import 'package:chat_si_no_app/presentation/providers/chat_provider.dart';
import 'package:chat_si_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:chat_si_no_app/presentation/widgets/chat/si_no_message_bubble.dart';
import 'package:chat_si_no_app/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://ichef.bbci.co.uk/images/ic/480xn/p0jymr5g.jpg.webp"),
          ),
        ),
        title: Text("Terminator"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

   final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];

                  return (message.fromWho == FromWho.his )
                    ? SiNoMessageBubble()
                    : MyMessageBubble(message: message,);
                },
              )
            ),

            /// caja de texto para escribir mensajes
            MessageFieldBox(
              onValue: chatProvider.sendMessage,
            ),
            
          ],
        ),
      ),
    );
  }
}