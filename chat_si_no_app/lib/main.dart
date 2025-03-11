import 'package:chat_si_no_app/config/theme/app_theme.dart';
import 'package:chat_si_no_app/presentation/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SI o NO App ',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor:1).theme(),
      home: ChatScreen()
        
    );
  }
}

