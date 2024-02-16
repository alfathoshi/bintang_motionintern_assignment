import 'package:bintang_motionintern_week_1/lottie.dart';
import 'package:bintang_motionintern_week_1/transaction.dart';
import 'package:bintang_motionintern_week_1/shop.dart';
import 'package:bintang_motionintern_week_1/week2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const transaction(),
    );
  }
}
