import 'package:flutter/material.dart';
import 'package:friendlychat/widgets/messages_list.dart';
import 'package:friendlychat/widgets/text_composer.dart';
import 'package:provider/provider.dart';
import 'package:friendlychat/models/message_data.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FriendlyChat'),
      ),
      body: Column(
        children: <Widget>[
          MessagesList(),
          TextComposer(),
        ],
      ),
    );
  }
}
