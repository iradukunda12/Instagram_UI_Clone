import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String names;
  const UserPost({super.key, required this.names});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                names,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // SizedBox(
              //   width: 250.0,
              // ),
              Spacer(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz_rounded),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[400],
        ),
      ],
    );
  }
}
