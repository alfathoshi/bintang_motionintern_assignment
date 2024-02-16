import 'package:bintang_motionintern_week_3_assignment/widget/dashboard.dart';
import 'package:bintang_motionintern_week_3_assignment/theme/darkTheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      home: Dashboard(),
    );
  }
}
