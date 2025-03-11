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
    );
  }
}