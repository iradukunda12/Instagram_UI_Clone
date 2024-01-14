import 'dart:ui';

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
            // child: Container(
            //   child: Image.asset(
            //     '',
            //   ),
            // ),

            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.grey[400],

              image: DecorationImage(
                image: AssetImage(
                  'assets/images/Ishema.jpg',
                ),
                fit: BoxFit.cover,
              ),

              // border: Border.all(
              //   style: BorderStyle.solid,
              //   color: Color.fromRGBO(246, 105, 107, 1),

              border: Border(
                left: BorderSide(
                  color: Color.fromRGBO(246, 105, 107, 1),
                  width: 4.0,
                ),
                right: BorderSide(
                  color: Color.fromRGBO(246, 105, 107, 1),
                  width: 4.0,
                ),
                bottom: BorderSide(
                  color: Color.fromRGBO(246, 105, 107, 1),
                  width: 4.0,
                ),
                top: BorderSide(
                  color: Color.fromRGBO(246, 105, 107, 1),
                  width: 4.0,
                ),
              ),
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
