import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/timeline.dart';

class ProfiePage extends StatelessWidget {
  const ProfiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            shape: const Border(
              bottom: BorderSide(color: Colors.white10),
            ),
            expandedHeight: 150,
            title: Text(
              'Alex Tomahawk',
              style: GoogleFonts.inter(fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
            bottom: const TabBar(
              indicatorColor: Colors.blue,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelPadding: EdgeInsets.symmetric(horizontal: 0),
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              physics: ScrollPhysics(),
              tabs: [
                Tab(
                  text: "Posts",
                ),
                Tab(
                  text: "Replies",
                ),
                Tab(
                  text: "Highlights",
                ),
                Tab(
                  text: "Media",
                ),
                Tab(
                  text: "Likes",
                )
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Column(
              children: [
                Tweet(
                  name: 'Alex Tomahawk',
                  caption:
                      'Id est sunt magna aliqua voluptate. Cillum enim exercitation officia id eiusmod tempor. Consectetur sit Lorem excepteur exercitation ad veniam magna in adipisicing non. Elit amet fugiat eiusmod dolor nostrud excepteur ut officia et aute laboris laboris amet. Laborum nostrud laborum est aliquip duis eu consectetur do non tempor aute sit. Ut dolor ea consequat tempor dolore nulla fugiat cillum. Ut qui consectetur tempor pariatur sunt qui amet minim.',
                  comment: '98',
                  likes: '17.6k',
                  retweet: '81k',
                  username: '@alex_thehawk',
                  views: '108k',
                ),
                Tweet(
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
          )
        ],
      )),
    );
  }
}
