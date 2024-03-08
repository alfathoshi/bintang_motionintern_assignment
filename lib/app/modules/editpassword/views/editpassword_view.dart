import 'package:bintang_motionintern_week_7/app/shared/widgets/textfieldpassword.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/editpassword_controller.dart';

class EditpasswordView extends GetView<EditpasswordController> {
  const EditpasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3FAF3),
      appBar: AppBar(
        toolbarHeight: 86,
        backgroundColor: const Color(0xFF62C172),
        title: Text(
          'Ubah Password',
          style: GoogleFonts.poppins(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          TextfieldPW(
            teks: "Password Lama",
          ),
          TextfieldPW(
            teks: "Password Baru",
          ),
          Expanded(
            child: TextfieldPW(
              teks: "Konfirmasi Password Baru",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: MediaQuery.of(context).viewInsets.bottom != 0
                ? null
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: const Text(
                      'Simpan',
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
