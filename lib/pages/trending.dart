import 'package:bintang_motionintern_week_3_assignment/widget/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/timeline.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const SearchBar(
          hintText: 'Search X',
          constraints: BoxConstraints(minHeight: 40),
          elevation: MaterialStatePropertyAll(20),
          backgroundColor: MaterialStatePropertyAll(Colors.white10),
          hintStyle: MaterialStatePropertyAll(
              TextStyle(color: Colors.grey, fontSize: 14)),
          side: MaterialStatePropertyAll(BorderSide(color: Colors.white10)),
        ),
        centerTitle: true,
        leading: Builder(builder: (BuildContext context) {
          return GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: CircleAvatar(),
            ),
          );
        }),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      drawer: const SideBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Colors.white12,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trends for you',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const TrendingCard(
                      location: 'Trending in Indonesia',
                      trending: 'Debat',
                      posts: '200k posts',
                    ),
                    const TrendingCard(
                      location: 'Trending in Indonesia',
                      trending: 'Buzzer',
                      posts: '187k posts',
                    ),
                    const TrendingCard(
                      location: 'Trending in Indonesia',
                      trending: 'Slepet',
                      posts: '142k posts',
                    ),
                    const TrendingCard(
                      location: 'Trending in Indonesia',
                      trending: 'Greenflation',
                      posts: '140k posts',
                    ),
                    const TrendingCard(
                      location: 'Trending in Indonesia',
                      trending: 'Receh',
                      posts: '137k posts',
                    ),
                    Text(
                      'Show More',
                      style: GoogleFonts.inter(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Colors.white12,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Videos for you',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Chcek out these popular nd trending videos for you',
                      style:
                          GoogleFonts.inter(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            VideosFY(view: '312k'),
                            SizedBox(
                              width: 16,
                            ),
                            VideosFY(view: '87k'),
                            SizedBox(
                              width: 16,
                            ),
                            VideosFY(view: '96k'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.topic,
                    size: 32,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Topic',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const Tweet(
              name: 'Alex Tomahawk',
              caption:
                  'Id est sunt magna aliqua voluptate. Cillum enim exercitation officia id eiusmod tempor. Consectetur sit Lorem excepteur exercitation ad veniam magna in adipisicing non. Elit amet fugiat eiusmod dolor nostrud excepteur ut officia et aute laboris laboris amet. Laborum nostrud laborum est aliquip duis eu consectetur do non tempor aute sit. Ut dolor ea consequat tempor dolore nulla fugiat cillum. Ut qui consectetur tempor pariatur sunt qui amet minim.',
              comment: '98',
              likes: '17.6k',
              retweet: '81k',
              username: '@alex_thehawk',
              views: '108k',
            ),
          ],
        ),
      ),
    );
  }
}

class TrendingCard extends StatelessWidget {
  final String location;
  final String trending;
  final String posts;
  const TrendingCard({
    super.key,
    required this.location,
    required this.trending,
    required this.posts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  location,
                  style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  trending,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  posts,
                  style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.more_vert,
              color: Colors.grey,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class VideosFY extends StatelessWidget {
  final String view;
  const VideosFY({
    super.key,
    required this.view,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: Center(
                child: Icon(
                  Icons.play_circle_outlined,
                  size: 48,
                ),
              ),
            ),
            FittedBox(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white24,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.remove_red_eye,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(view),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
