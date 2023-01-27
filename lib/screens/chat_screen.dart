import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String userName, groupId, groupName;
  const ChatScreen(
      {super.key,
      required this.groupId,
      required this.groupName,
      required this.userName});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(widget.groupName),
    ));
  }
}
