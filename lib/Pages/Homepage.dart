import 'package:flutter/material.dart';
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
    "kevin",
    "theCatBabalao",
    "kelly",
    "clement",
    "b_bex",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 900,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Instagram",
                style: GoogleFonts.rochester(
                  fontWeight: FontWeight.bold,
                  fontSize: 33,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 28,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 7.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outline,
                        size: 28.0,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        size: 28.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        ],
      ),
    );
  }
}