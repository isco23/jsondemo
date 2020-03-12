import 'package:flutter/material.dart';
import 'package:jsonserializedemo/messagelist.dart';

void main() => runApp(EmailApp());

class EmailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      title: 'Json Demo',
      home : MessageList()
    );
  }
}