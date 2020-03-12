import 'package:flutter/material.dart';
import 'package:jsonserializedemo/message.dart';

class MessageCompose extends StatefulWidget {
  @override
  _MessageComposeState createState() => _MessageComposeState();
}

class _MessageComposeState extends State<MessageCompose> {
  String name = '';
  String username = '';
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compose New Message'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  labelText: 'NAME',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                onChanged: (value) {
                  name = value;
                },
              ),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  labelText: 'USERNAME',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                onChanged: (value) {
                  username = value;
                },
              ),
            ),
            Divider(),
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  labelText: 'EMAIL',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onChanged: (value){
                  email = value;
                },
                maxLines: 5,
              ),
            ),
            ListTile(
              title: RaisedButton(
                child: Text('Send'),
                onPressed: () {
                  Message message = Message(name, username, email);
                  Navigator.pop(context,message);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
