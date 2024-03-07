import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextfieldPW extends StatelessWidget {
  TextfieldPW({super.key, required this.teks});

  final String teks;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(teks, style: GoogleFonts.poppins(fontSize: 14, color: const Color(0xFFAAAAAA)),),
          TextField(
            controller: _textEditingController,
            
          ),
        ],
      ),
    );
  }
}
