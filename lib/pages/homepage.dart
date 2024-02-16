import 'package:bintang_motionintern_week_3_assignment/widget/sidebar.dart';
import 'package:bintang_motionintern_week_3_assignment/widget/timeline.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shape: const Border(
            bottom: BorderSide(
              color: Colors.white12,
            ),
          ),
          title: Image.asset(
            'assets/images/Logo.png',
            scale: 16,
          ),
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: CircleAvatar(),
                ),
              );
            },
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: "For You",
              ),
              Tab(
                text: "Following",
              )
            ],
          ),
        ),
        drawer: const SideBar(),
        body: const TabBarView(
          children: [
            ForYouPage(),
            FollowingPage(),
          ],
        ),
      ),
    );
  }
}

class ForYouPage extends StatelessWidget {
  const ForYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return const Tweet(
                  name: 'Alex Tomahawk',
                  caption:
                      'Id est sunt magna aliqua voluptate. Cillum enim exercitation officia id eiusmod tempor. Consectetur sit Lorem excepteur exercitation ad veniam magna in adipisicing non. Elit amet fugiat eiusmod dolor nostrud excepteur ut officia et aute laboris laboris amet. Laborum nostrud laborum est aliquip duis eu consectetur do non tempor aute sit. Ut dolor ea consequat tempor dolore nulla fugiat cillum. Ut qui consectetur tempor pariatur sunt qui amet minim.',
                  comment: '98',
                  likes: '17.6k',
                  retweet: '81k',
                  username: '@alex_thehawk',
                  views: '108k',
                );
              }),
        ),
      ],
    );
  }
}

class FollowingPage extends StatelessWidget {
  const FollowingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
        });
  }
}
