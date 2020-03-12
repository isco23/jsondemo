import 'package:flutter/material.dart';
import 'package:jsonserializedemo/messagecompose.dart';

import 'message.dart';

class ComposeButton extends StatelessWidget {

  final List<Message> messages;
  ComposeButton(this.messages);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        Message message = await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => MessageCompose()),
        );

        if (message != null) {
          messages.add(message);
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Your message has been sent.'),
              backgroundColor: Colors.blueGrey,
            ),
          );
        }
      },
      child: Icon(Icons.add),
    );
  }
}
