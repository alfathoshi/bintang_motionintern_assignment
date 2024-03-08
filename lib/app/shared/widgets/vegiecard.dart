import 'package:bintang_motionintern_week_7/app/modules/kirimpermintaan/controllers/kirimpermintaan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VegieCard extends StatelessWidget {
  VegieCard(
      {super.key, required this.nama, required this.status, required this.id});
  final String id;
  final String nama;
  final bool status;

  KirimpermintaanController kirimpermintaanController =
      Get.put(KirimpermintaanController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 204,
      width: 164,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFD1F3D1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            height: 96,
            width: 204,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/brokoli.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              nama,
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: status == false
                ? Text(
                    'Proses',
                    style: GoogleFonts.poppins(color: Colors.orange),
                  )
                : Text(
                    'Selesai',
                    style: GoogleFonts.poppins(color: Colors.green),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    kirimpermintaanController.handleDelete(id);
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xFF74DA74),
                    ),
                  ),
                  child: Text(
                    'Hapus',
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
