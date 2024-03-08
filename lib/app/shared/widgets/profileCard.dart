import 'package:bintang_motionintern_week_7/app/shared/widgets/profileform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.alamat,
    required this.email,
    required this.name,
    required this.telp,
    required this.id
  });
  final String id;
  final String name;
  final String email;
  final String telp;
  final String alamat;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nama Lengkap',
          style:
              GoogleFonts.poppins(color: const Color(0xFFAAAAAA), fontSize: 14),
        ),
        const SizedBox(
          height: 8,
        ),
        ProfileForm(teks: name),
        Text(
          'Email',
          style:
              GoogleFonts.poppins(color: const Color(0xFFAAAAAA), fontSize: 14),
        ),
        const SizedBox(
          height: 8,
        ),
        ProfileForm(teks: email),
        Text(
          'Nomor Telepon',
          style:
              GoogleFonts.poppins(color: const Color(0xFFAAAAAA), fontSize: 14),
        ),
        const SizedBox(
          height: 8,
        ),
        ProfileForm(teks: telp),
        Text(
          'Alamat',
          style:
              GoogleFonts.poppins(color: const Color(0xFFAAAAAA), fontSize: 14),
        ),
        const SizedBox(
          height: 8,
        ),
        ProfileForm(teks: alamat),
        const Divider(),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
