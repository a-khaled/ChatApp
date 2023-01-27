import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../screens/chat_screen.dart';

class GroupTile extends StatefulWidget {
  final String userName, groupId, groupName;
  const GroupTile(
      {super.key,
      required this.groupId,
      required this.groupName,
      required this.userName});

  @override
  State<GroupTile> createState() => _GroupTileState();
}

class _GroupTileState extends State<GroupTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => nextScreen(
          context,
          ChatScreen(
            groupId: widget.groupId,
            groupName: widget.groupName,
            userName: widget.userName,
          )),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).primaryColor,
            child: Text(
              widget.groupName.substring(0, 1).toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          title: Text(
            widget.groupName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Joing the conversation as ${widget.userName}",
            style: const TextStyle(fontSize: 13),
          ),
        ),
      ),
    );
  }
}