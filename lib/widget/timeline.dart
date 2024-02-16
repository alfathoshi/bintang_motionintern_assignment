import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tweet extends StatelessWidget {
  final String name, username, caption, likes, retweet, comment, views;
  const Tweet({
    super.key,
    required this.name,
    required this.caption,
    required this.comment,
    required this.likes,
    required this.retweet,
    required this.username,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: BorderDirectional(
          bottom: BorderSide(
            color: Colors.white12,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white30,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(username),
                    ],
                  ),
                  Text(
                    caption,
                    style: GoogleFonts.inter(),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white30,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/Reply.png',
                        scale: 28,
                      ),
                      Text(
                        comment,
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFB5B5B5),
                        ),
                      ),
                      Image.asset(
                        'assets/images/Repost.png',
                        scale: 28,
                      ),
                      Text(
                        retweet,
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFB5B5B5),
                        ),
                      ),
                      Image.asset(
                        'assets/images/Like.png',
                        scale: 28,
                      ),
                      Text(
                        likes,
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFB5B5B5),
                        ),
                      ),
                      Image.asset(
                        'assets/images/Views.png',
                        scale: 28,
                      ),
                      Text(
                        views,
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFB5B5B5),
                        ),
                      ),
                      const Icon(
                        Icons.share,
                        color: Color(0xFFB5B5B5),
                        size: 18,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
