import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchBar(
          hintText: 'Search for Lists',
          constraints: BoxConstraints(minHeight: 40),
          elevation: MaterialStatePropertyAll(20),
          backgroundColor: MaterialStatePropertyAll(Colors.white10),
          hintStyle: MaterialStatePropertyAll(
              TextStyle(color: Colors.grey, fontSize: 14)),
          side: MaterialStatePropertyAll(BorderSide(color: Colors.white10)),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.more_vert,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: BorderDirectional(
                bottom: BorderSide(
                  color: Colors.white12,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pinned Lists',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'Edit',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(
                            Icons.note_add,
                            size: 48,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Saved',
                          style: GoogleFonts.inter(
                              color: Colors.grey, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: BorderDirectional(
                bottom: BorderSide(
                  color: Colors.white12,
                ),
              ),
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Discover new Lists',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  const ListCard(
                    include: '14 followers including @budi_budiman',
                    members: '45 members',
                    name: 'Base',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ListCard(
                    include: '14 followers including @budi_budiman',
                    members: '45 members',
                    name: 'Base',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ListCard(
                    include: '14 followers including @budi_budiman',
                    members: '45 members',
                    name: 'Base',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Show more',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: BorderDirectional(
                bottom: BorderSide(
                  color: Colors.white12,
                ),
              ),
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Your Lists',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  const ListCard(
                    include: 'Budi Budiman',
                    members: '5 members',
                    name: 'Saved',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  final String name;
  final String members;
  final String include;
  const ListCard(
      {super.key,
      required this.include,
      required this.members,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey,
          )),
      trailing: const Icon(Icons.add_circle),
      title: Column(
        children: [
          Row(
            children: [
              Text(
                name,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                members,
                style: GoogleFonts.inter(fontSize: 10, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          Row(
            children: [
              for (int i = 0; i < 3; i++)
                const Align(
                  widthFactor: 0.6,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 10,
                    ),
                  ),
                ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  include,
                  style: GoogleFonts.inter(fontSize: 10, color: Colors.grey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
