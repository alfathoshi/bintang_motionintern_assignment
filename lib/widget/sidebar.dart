import 'package:bintang_motionintern_week_3_assignment/pages/bookmark.dart';
import 'package:bintang_motionintern_week_3_assignment/pages/lists.dart';
import 'package:bintang_motionintern_week_3_assignment/pages/premium.dart';
import 'package:bintang_motionintern_week_3_assignment/pages/profile.dart';
import 'package:bintang_motionintern_week_3_assignment/pages/spaces.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 44,
            ),
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.white24,
              ))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white54,
                          radius: 24,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Alex Tomahawk',
                          style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                        ),
                        Text('@alex_tomahawk',
                            style: GoogleFonts.inter(color: Colors.grey)),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text('7.185', style: GoogleFonts.inter()),
                            const SizedBox(
                              width: 4,
                            ),
                            Text('Following',
                                style: GoogleFonts.inter(color: Colors.grey)),
                            const SizedBox(
                              width: 8,
                            ),
                            Text('673', style: GoogleFonts.inter()),
                            const SizedBox(
                              width: 4,
                            ),
                            Text('Followers',
                                style: GoogleFonts.inter(color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                    const Icon(Icons.more_horiz)
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.white24,
              ))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Profile'),
                      leading: const Icon(Icons.person),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ProfiePage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Premium'),
                      leading: Image.asset(
                        'assets/images/Logo.png',
                        scale: 18,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PremiumPage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Bookmark'),
                      leading: const Icon(Icons.bookmark),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const BookmarkPage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Lists'),
                      leading: const Icon(Icons.list),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ListPage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Spaces'),
                      leading: const Icon(Icons.mic),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SpacesPage(),
                          ),
                        );
                      },
                    ),
                    const ListTile(
                      title: Text('Monetization'),
                      leading: Icon(Icons.monetization_on),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Professional Tools',
                style: GoogleFonts.inter(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.keyboard_arrow_down,
              ),
            ),
            ListTile(
              title: Text(
                'Settings & Support',
                style: GoogleFonts.inter(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.keyboard_arrow_down,
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(Icons.dark_mode_outlined),
              ),
            )
          ],
        ),
      ),
    );
  }
}
