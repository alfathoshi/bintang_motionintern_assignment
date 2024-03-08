import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditprofileController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController telpC;
  late TextEditingController alamatC;
  late TextEditingController emailC;

  void updateProfile(
      String id, String name, String email, String telp, String alamat) {
    final updateData = {
      'nama': name,
      'email': email,
      'telp': telp,
      'alamat': alamat
    };
    FirebaseFirestore.instance.collection('profile').doc(id).update(updateData);

    try {
      Get.defaultDialog(
          title: "Berhasil!",
          middleText: "Ubah Profile Berhasil!",
          backgroundColor: Colors.white,
          buttonColor: Colors.white,
          confirmTextColor: Colors.black,
          onConfirm: () {
            nameC.clear();
            emailC.clear();
            alamatC.clear();
            telpC.clear();
            Get.back();
            Get.back();
          },
          textConfirm: "Okay");
    } catch (e) {
      Get.defaultDialog(
        title: "Gagal!",
        middleText: "Ubah Profile Gagal!",
      );
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    nameC = TextEditingController();
    alamatC = TextEditingController();
    emailC = TextEditingController();
    telpC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    nameC.dispose();
    emailC.dispose();
    emailC.dispose();
    telpC.dispose();
    super.onClose();
  }
}
