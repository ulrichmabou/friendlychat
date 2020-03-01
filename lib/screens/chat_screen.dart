import 'package:flutter/material.dart';
import 'package:friendlychat/widgets/text_composer.dart';
import 'package:friendlychat/widgets/chat_message.dart';

//const String _name = 'Ulrich';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FriendlyChat'),
      ),
      body: Column(
        children: <Widget>[
          ChatMessage(
            sender: 'Ulrich',
            message: 'first message from Ulrich',
          ),
          TextComposer(),
        ],
      ),
    );
  }
}
