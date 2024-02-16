import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            "Whatsapp",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.white),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(0.2)),
            tabs: const [
              Tab(text: "Chats"),
              Tab(text: "Updates"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatsPage(),
            UpdatesPage(),
            CallsPage(),
          ],
        ),
      ),
    );
  }
}

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ChatCard(
              image: "assets/images/",
              name: "Aldian",
              message: "Message",
              time: "19:30",
            ),
            SizedBox(height: 16),
            ChatCard(
              image: "assets/images/",
              name: "Bima",
              message: "Message",
              time: "19:20",
            ),
            SizedBox(height: 16),
            ChatCard(
              image: "assets/images/",
              name: "Cecep",
              message: "Message",
              time: "19:10",
            ),
          ],
        ),
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  final String image;
  final String name;
  final String message;
  final String time;
  const ChatCard({
    super.key,
    required this.image,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              Text(message),
            ],
          ),
        ),
        Text(time),
      ],
    );
  }
}

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Ini halaman updates")),
    );
  }
}

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Ini halaman calls")),
    );
  }
}