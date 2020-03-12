import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;
part 'message.g.dart';

@JsonSerializable()
class Message {
  final String name;
  final String username;
  final String email;


  Message( this.name, this.username, this.email);
  factory Message.fromJson(Map<String , dynamic> json)
      => _$MessageFromJson(json);

  static Future<List<Message>> browse() async{
    http.Response response = await http.get('https://jsonplaceholder.typicode.com/users');    
    await Future.delayed(Duration(seconds: 3));
    String content = response.body;
    List collection = json.decode(content);
    List<Message> _message = collection.map((json) => Message.fromJson(json)).toList();
    return _message;
  }
}
