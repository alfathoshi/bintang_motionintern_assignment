import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            height: 136,
            width: double.infinity,
            color: const Color(0xFF62C172),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/ikon.png',
                    scale: 4,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Natalie Diva',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        'nataliediva@gmail.com',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 69,
                  ),
                  IconButton(
                    onPressed: () {
                     
                    },
                    icon: const ImageIcon(
                      AssetImage(
                        'assets/images/edit.png',
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama Lengkap',
                  style: GoogleFonts.poppins(
                      color: const Color(0xFFAAAAAA), fontSize: 14),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Natalie Diva',
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Email',
                  style: GoogleFonts.poppins(
                      color: const Color(0xFFAAAAAA), fontSize: 14),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'nataliediva@gmail.com',
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Nomor Telepon',
                  style: GoogleFonts.poppins(
                      color: const Color(0xFFAAAAAA), fontSize: 14),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '0812 3456 7890',
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Alamat',
                  style: GoogleFonts.poppins(
                      color: const Color(0xFFAAAAAA), fontSize: 14),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Jl. Sukapura No. 03',
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Keamanan',
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 14),
                ),
                const SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                   
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ubah Password',
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 16),
                      ),
                      const Icon(Icons.chevron_right),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(),
              ],
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.logout,
                color: Color(0xFF129B29),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Logout Akun',
                style: GoogleFonts.poppins(color: const Color(0xFF129B29)),
              )
            ],
          )
        ],
      )),
    );
  }
}
