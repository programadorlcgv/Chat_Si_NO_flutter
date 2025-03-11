import 'package:chat_si_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter/material.dart';

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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return MyMessageBubble();
                },
              )
            ),
            Text("Espacio para escribir los mensajes")
            
          ],
        ),
      ),
    );
  }
}