import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class RequestForm extends StatelessWidget {
  RequestForm(
      {super.key, required this.teks, required this.textEditingController});
  final TextEditingController textEditingController;
  final String teks;
  // final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            teks,
            style: GoogleFonts.poppins(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextField(
            controller: textEditingController,
          ),
        ],
      ),
    );
  }
}
