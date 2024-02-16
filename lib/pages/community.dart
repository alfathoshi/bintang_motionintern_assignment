import 'package:bintang_motionintern_week_3_assignment/widget/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    int i;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Communities',
            style: GoogleFonts.inter(fontWeight: FontWeight.w600)),
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.people))
        ],
      ),
      drawer: const SideBar(),
      body: SingleChildScrollView(
        child: Container(
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
                  'Discover new Communities',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
                const SizedBox(
                  height: 16,
                ),
                for (i = 0; i < 10; i++)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: CommunitiesCard(
                        name: 'TelyuFess', members: '187.9K Members'),
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
      ),
    );
  }
}

class CommunitiesCard extends StatelessWidget {
  final String name;
  final String members;
  const CommunitiesCard({super.key, required this.name, required this.members});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white30, borderRadius: BorderRadius.circular(8)),
          height: 120,
          width: 120,
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style:
                  GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              members,
              style: GoogleFonts.inter(fontSize: 12),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                for (int i = 0; i < 5; i++)
                  const Align(
                    widthFactor: 0.6,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 18,
                      ),
                    ),
                  )
              ],
            )
          ],
        )
      ],
    );
  }
}
