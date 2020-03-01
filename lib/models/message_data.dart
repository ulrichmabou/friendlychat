import 'package:flutter/foundation.dart';
import 'package:friendlychat/widgets/chat_message.dart';
import 'dart:collection';

class MessageData extends ChangeNotifier {
  List<ChatMessage> _messages = [
    ChatMessage(sender: 'Ulrich', text: 'Hello Joel'),
    ChatMessage(sender: 'Joel', text: 'Hello Ulrich'),
  ];

  UnmodifiableListView<ChatMessage> get messages {
    return UnmodifiableListView(_messages);
  }

  int get messageCount {
    return _messages.length;
  }

  void addMessage(String messageText) {
    final message = ChatMessage(text: messageText);
    _messages.add(message);
    notifyListeners();
  }
}
