import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/timeline.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bookmark',
          style: GoogleFonts.inter(fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          )
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return const Tweet(
              name: 'InpisibelDerok',
              caption:
                  'Amet nostrud incididunt Lorem exercitation in nostrud exercitation ea quis dolore tempor amet sunt. Ad aute qui veniam nostrud enim dolor pariatur velit eiusmod. Qui culpa exercitation id in sunt. Esse consectetur tempor nostrud nostrud dolor.',
              comment: '98',
              likes: '17.6k',
              retweet: '81k',
              username: '@the_rock',
              views: '108k',
            );
          },
        ),
      ),
    );
  }
}
