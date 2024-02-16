import 'package:bintang_motionintern_week_3_assignment/widget/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Notifications',
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
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings))],
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Verified",
              ),
              Tab(
                text: "Mention",
              )
            ],
          ),
        ),
        drawer: const SideBar(),
        body: const Center(
          child: Text('Notification'),
        ),
      ),
    );
  }
}
