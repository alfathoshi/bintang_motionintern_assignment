import 'package:bintang_motionintern_week_3_assignment/widget/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const SearchBar(
          hintText: 'Search Direct Messages',
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
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return const chatCard(
            name: 'Asep',
            username: '@asep_edun',
            date: '31 Jan 24',
            tweet:
                'Lorem dolore eu eiusmod et ut cillum aliqua ullamco officia velit amet reprehenderit commodo quis. Minim et nulla reprehenderit ullamco. Dolore ad nisi nostrud proident tempor aute nostrud. Esse culpa velit eu anim magna irure excepteur ullamco pariatur enim labore nostrud aliquip aliquip.',
          );
        },
      ),
    );
  }
}

class chatCard extends StatelessWidget {
  final String name;
  final String username;
  final String date;
  final String tweet;

  const chatCard({
    super.key,
    required this.date,
    required this.name,
    required this.username,
    required this.tweet,
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
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.top,
          leading: const CircleAvatar(
            radius: 28,
          ),
          title: Column(
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    username,
                    style: GoogleFonts.inter(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    date,
                    style: GoogleFonts.inter(color: Colors.grey),
                  ),
                ],
              ),
              Text(
                style: GoogleFonts.inter(color: Colors.grey),
                tweet,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }
}
