import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text});

//  final String sender;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Text('U'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Ulrich',
                style: Theme.of(context).textTheme.subhead,
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
