import 'package:book_store/components/for_you.dart';
import 'package:book_store/components/popular.dart';

import 'package:book_store/shared/constants/constants.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  drawer,
                  width: 30,
                ),
                Row(
                  children: [
                    Image.asset(search, width: 28),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      avatar,
                      width: 40,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Popular',
                  style: TextStyle(fontSize: 30),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Show all',
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ))
              ],
            ),
          ),
          const Popular(),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'For You',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
          const ForYou(),
        ],
      ),
    ));
  }
}
