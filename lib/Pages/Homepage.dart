import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_uiclone/util/stories.dart';
import 'package:instagram_uiclone/util/userposts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List people = [
    "Your Story",
    "Bruce Melodie",
    "theCatBabalao",
    "kelly",
    "clement",
    "naomie_m",
    "Bryan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: GoogleFonts.rochester(
                fontWeight: FontWeight.bold,
                fontSize: 33,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 7.0),
              child: Icon(
                FontAwesomeIcons.chevronDown,
                size: 16,
                color: Colors.black,
              ),
            ),
            // const Spacer(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline,
                      size: 28.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      const FaIcon(FontAwesomeIcons.facebookMessenger).icon,
                      size: 25.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return Stories(
                    name: people[index],
                  );
                },
              ),
            ),
            const UserPost(
              names: "kelly",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        ],
      ),
    );
  }
}
