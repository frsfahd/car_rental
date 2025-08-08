import 'package:flutter/material.dart';

class CallBtn extends StatelessWidget {
  final Color backGroundColor;
  final Color foreGroundColor;
  const CallBtn({
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
        icon: Icon(Icons.phone),
        color: foreGroundColor,
      ),
    );
  }
}
