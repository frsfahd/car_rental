import 'package:flutter/material.dart';

class ChatBtn extends StatelessWidget {
  final Color backGroundColor;
  final Color foreGroundColor;
  const ChatBtn({
    super.key,
    required this.backGroundColor,
    required this.foreGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backGroundColor,
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.message),
        color: foreGroundColor,
      ),
    );
  }
}
