import 'package:bintang_motionintern_week_7/app/shared/widgets/requestform.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/kirimpermintaan_controller.dart';

// ignore: must_be_immutable
class KirimpermintaanView extends GetView<KirimpermintaanController> {
  KirimpermintaanView({super.key});
  KirimpermintaanController kirimpermintaanController =
      Get.put(KirimpermintaanController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3FAF3),
      appBar: AppBar(
        toolbarHeight: 86,
        backgroundColor: const Color(0xFF62C172),
        title: Text(
          'Kirim Permintaan',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Foto Produk',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 76,
                      width: 76,
                      color: Colors.white,
                    ),
                    const ImageIcon(
                      AssetImage('assets/images/camera.png'),
                    ),
                  ],
                )),
            RequestForm(
              teks: 'Nama Produk',
              textEditingController: kirimpermintaanController.nameC,
            ),
            // RequestForm(
            //   teks: 'Deskripsi Produk',
            // ),
            // RequestForm(
            //   teks: 'Kategori',
            // ),
            // RequestForm(
            //   teks: 'Harga',
            // ),
            // RequestForm(
            //   teks: 'Jumlah',
            // ),
            // RequestForm(
            //   teks: 'Durasi Tahan',
            // ),
            // RequestForm(
            //   teks: 'Berat',
            // ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF74DA74),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 52),
                      shape: const RoundedRectangleBorder()),
                  onPressed: () {
                    kirimpermintaanController
                        .handleCreateVegie(kirimpermintaanController.nameC.text);
                    Get.back();
                  },
                  child: const Text('Kirim'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
