import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String name;

  const Stories({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(name),
        ],
      ),
    );
  }
}
