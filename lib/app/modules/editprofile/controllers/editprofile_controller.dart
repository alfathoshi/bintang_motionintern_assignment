import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/profile_model.dart';

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
    Get.back();
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
