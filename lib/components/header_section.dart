import 'package:flutter/material.dart';

class HeaderSection extends StatefulWidget {
  final void Function({required String models})? filterModels;

  const HeaderSection({super.key, required this.filterModels});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          CircleAvatar(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          ),
          SizedBox(width: 20),
          Flexible(
            child: TextField(
              textInputAction: TextInputAction.search,
              onChanged: (value) {
                widget.filterModels!(models: value);
              },
              decoration: InputDecoration(
                hintText: 'Search for model...',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
