import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Ishema.jpg'),
                    fit: BoxFit.cover,
                  ),
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
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Isange.jpg'),
                  fit: BoxFit.cover)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline),
              iconSize: 35,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.comment),
              iconSize: 28,
            ),
            Transform.rotate(
              angle: -100,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.solidPaperPlane),
                iconSize: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
