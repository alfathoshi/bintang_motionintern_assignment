import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/widgets/profileform.dart';
import '../controllers/editprofile_controller.dart';

// ignore: must_be_immutable
class EditprofileView extends GetView<EditprofileController> {
  EditprofileController editprofileController =
      Get.put(EditprofileController());

  EditprofileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF3FAF3),
        appBar: AppBar(
          toolbarHeight: 86,
          backgroundColor: const Color(0xFF62C172),
          title: Text(
            'Ubah Profile',
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/ikon.png',
                      scale: 3,
                    ),
                    const Opacity(
                        opacity: 0.4,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 53,
                        )),
                    Image.asset(
                      'assets/images/camera.png',
                      scale: 3,
                    ),
                  ],
                ),
              ),
               const SizedBox(
                height: 32,
              ),
              Text(
                'Nama Lengkap',
                style: GoogleFonts.poppins(
                    color: const Color(0xFFAAAAAA), fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),
              ProfileForm(teks: controller.profileModel.namaLengkap),
              Text(
                'Email',
                style: GoogleFonts.poppins(
                    color: const Color(0xFFAAAAAA), fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),
              ProfileForm(teks: controller.profileModel.email),
              Text(
                'Nomor Telepon',
                style: GoogleFonts.poppins(
                    color: const Color(0xFFAAAAAA), fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),
              ProfileForm(teks: controller.profileModel.noTelepon),
              Text(
                'Alamat',
                style: GoogleFonts.poppins(
                    color: const Color(0xFFAAAAAA), fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),
              ProfileForm(teks: controller.profileModel.alamat),
            ],
          ),
        ));
  }
}
