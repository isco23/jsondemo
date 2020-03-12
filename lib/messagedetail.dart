import 'package:flutter/material.dart';


class MessageDetail extends StatelessWidget {
  final String username;
  final String email;

  const MessageDetail({Key key, this.username, this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.username),centerTitle: true,),
          body: Center(
        child: Text(this.email),
      ),
    );
  }
}