import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatelessWidget {
  SearchBox({super.key});
  final _texteditingcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: TextField(
          controller: _texteditingcontroller,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(8),
            ),
            suffixIcon: const Icon(Icons.search),
            suffixIconColor: Colors.grey,
            prefixText: '   ',
            hintText: 'Cari Produk',
            hintStyle: GoogleFonts.poppins(color: Colors.grey),
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            border: const OutlineInputBorder(),
          )),
    );
  }
}
