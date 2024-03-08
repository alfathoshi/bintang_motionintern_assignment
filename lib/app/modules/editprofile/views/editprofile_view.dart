import 'package:bintang_motionintern_week_7/app/shared/widgets/editprofile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/editprofile_controller.dart';

// ignore: must_be_immutable
class EditprofileView extends GetView<EditprofileController> {
  EditprofileController editprofileController =
      Get.put(EditprofileController());

  final db = FirebaseFirestore.instance.collection('profile');

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
        body: SingleChildScrollView(
          child: StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('profile').snapshots(),
              builder: (context, snapshot) {
                return Padding(
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
                      ProfileEdit(
                        teks: 'Nama',
                        textEditingController: controller.nameC,
                        hinteks: snapshot.data!.docs.first['nama'],
                      ),
                      ProfileEdit(
                          teks: 'Email',
                          textEditingController: controller.emailC, hinteks: snapshot.data!.docs.first['email'],),
                      ProfileEdit(
                          teks: 'Alamat',
                          textEditingController: controller.alamatC, hinteks: snapshot.data!.docs.first['alamat'],),
                      ProfileEdit(
                          teks: 'No Telepon',
                          textEditingController: controller.telpC, hinteks: snapshot.data!.docs.first['telp'],),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF74DA74),
                                foregroundColor: Colors.white,
                                minimumSize: const Size(164, 52),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                            onPressed: () {
                              controller.updateProfile(
                                db.doc('profile1').id,
                                controller.nameC.text,
                                controller.emailC.text,
                                controller.telpC.text,
                                controller.alamatC.text,
                              );
                            },
                            child: const Text('Edit'),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ));
  }
}
