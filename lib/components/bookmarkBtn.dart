import 'package:flutter/material.dart';

class BookmarkBtn extends StatefulWidget {
  final Color backGroundColor;
  final Color foreGroundColor;
  const BookmarkBtn({
    super.key,
    required this.backGroundColor,
    required this.foreGroundColor,
  });

  @override
  State<BookmarkBtn> createState() => _BookmarkBtnState();
}

class _BookmarkBtnState extends State<BookmarkBtn> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: widget.backGroundColor,
      child: IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
        color: widget.foreGroundColor,
      ),
    );
  }
}
