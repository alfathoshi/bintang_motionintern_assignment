import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({super.key, required this.teks});
  final String teks;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teks,
          style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
