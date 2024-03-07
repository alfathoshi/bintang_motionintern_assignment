import 'package:bintang_motionintern_week_7/app/modules/editpassword/views/editpassword_view.dart';
import 'package:bintang_motionintern_week_7/app/modules/editprofile/views/editprofile_view.dart';
import 'package:bintang_motionintern_week_7/app/shared/widgets/profileform.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_controller.dart';

// ignore: must_be_immutable
class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);
  ProfileController profileController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFFF3FAF3),
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
                            controller.profileModel.namaLengkap,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            controller.profileModel.email,
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
                          Get.to(EditprofileView());
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
                    const Divider(),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Keamanan',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const EditpasswordView());
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
