import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:friendlychat/models/message_data.dart';

class TextComposer extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String newMessageText;

    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onChanged: (newText) {
                  newMessageText = newText;
                },
                decoration:
                    InputDecoration.collapsed(hintText: 'Send a message'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    _textController.clear();
                    Provider.of<MessageData>(context)
                        .addMessage(newMessageText);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
