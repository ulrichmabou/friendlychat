import 'package:flutter/material.dart';
import 'package:friendlychat/screens/chat_screen.dart';
import 'package:provider/provider.dart';
import 'package:friendlychat/models/message_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MessageData(),
      child: MaterialApp(
        home: ChatScreen(),
      ),
    );
  }
}
