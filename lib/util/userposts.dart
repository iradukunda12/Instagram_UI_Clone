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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                  iconSize: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 1.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.comment),
                    iconSize: 26,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Transform.rotate(
                    angle: -100,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.solidPaperPlane),
                      iconSize: 26,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 190,
            ),
            Row(
              children: [
                IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_border),
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 9.0,
              ),
              child: Row(
                children: [
                  Container(
                    width: 30.0,
                    height: 20.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/Ishema.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Text("Liked by"),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    "africa__250k",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text("and"),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    "3,781 others",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: Text(
                    "Kelly",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  " I highly recommend you follow",
                ),
                Text(
                  " @raminpopal_",
                  style: TextStyle(color: Colors.blueAccent),
                ),
                Text(
                  " to ",
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                " to learn how you can build your own profitable online store",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13.0),
              child: Text("in less than 24 hours!"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "View all 15 comments",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 0.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/Ishema.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(top: 0, left: 0, child: Text("hello"))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
