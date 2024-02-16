import 'package:bintang_motionintern_week_3_assignment/widget/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpacesPage extends StatelessWidget {
  const SpacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: const Icon(Icons.mic),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shape: const Border(bottom: BorderSide(color: Colors.white12)),
          title: Text(
            'Spaces',
            style: GoogleFonts.inter(fontWeight: FontWeight.bold),
          ),
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
        ),
        drawer: const SideBar(),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                'Happening Now',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'Spaces going on right now',
                style: GoogleFonts.inter(fontSize: 12, color: Colors.grey),
              ),
               const SizedBox(
                height: 16,
              ),
              const SpacesCard(
                name: 'Ini Spaces',
                topic: 'Spaces',
                listeners: '500 listening',
                host: 'Budi Budiman',
                desc: 'Ini adalah deskripsi mengenai spaces',
              ),
              const SizedBox(
                height: 24,
              ),
              const SpacesCard(
                name: 'Ini Spaces',
                topic: 'Spaces',
                listeners: '500 listening',
                host: 'Budi Budiman',
                desc: 'Ini adalah deskripsi mengenai spaces',
              )
            ],
          ),
        ));
  }
}

class SpacesCard extends StatelessWidget {
  final String name;
  final String topic;
  final String listeners;
  final String host;
  final String desc;
  const SpacesCard(
      {super.key,
      required this.name,
      required this.topic,
      required this.listeners,
      required this.host,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Icon(Icons.radar_outlined),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Text(
                  'LIVE',
                  style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                )),
                const Icon(Icons.more_vert)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(name,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold, fontSize: 24)),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(topic, style: GoogleFonts.inter()),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                for (int i = 0; i < 3; i++)
                  const Align(
                    widthFactor: 0.7,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.deepPurple,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                    listeners,
                    style: GoogleFonts.inter(fontSize: 12, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[600],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 12,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          host,
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white24,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                            child: Text(
                              'Host',
                              style: GoogleFonts.inter(
                                  fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      desc,
                      style:
                          GoogleFonts.inter(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
