import 'package:flutter/material.dart';

class CustomHeader extends StatefulWidget {
  final String title;
  const CustomHeader({super.key, required this.title});

  @override
  State<CustomHeader> createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
          color: const Color.fromARGB(255, 77, 41, 139),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 20,
                icon: const Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              IconButton(
                iconSize: 20,
                icon: const Icon(Icons.search),
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          color: Colors.deepPurple,
          child: Row(
            children: <Widget>[
              Text(
                widget.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
