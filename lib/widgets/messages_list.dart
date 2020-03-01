import 'package:flutter/material.dart';
import 'chat_message.dart';
import 'package:friendlychat/models/message_data.dart';
import 'package:provider/provider.dart';

class MessagesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MessageData>(
      builder: (context, messageData, child) {
        return ListView.builder(itemBuilder: (context, index) {
          final message = messageData.messages[index];
          return ChatMessage(
            sender: 'Ulrich',
            text: message.text,
          );
        });
      },
    );
  }
}
