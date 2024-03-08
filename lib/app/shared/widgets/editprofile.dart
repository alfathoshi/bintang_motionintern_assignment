import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit(
      {super.key, required this.teks, required this.textEditingController, required this.hinteks});

  final String teks;
  final String hinteks;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(teks,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Color(0xFFAAAAAA),
              )),
          TextField(
            controller: textEditingController,
            decoration: InputDecoration(hintText: hinteks),
          ),
        ],
      ),
    );
  }
}
