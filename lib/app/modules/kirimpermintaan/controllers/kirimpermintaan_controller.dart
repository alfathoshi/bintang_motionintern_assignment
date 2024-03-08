import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KirimpermintaanController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController descC;
  late TextEditingController kategoriC;
  late TextEditingController hargaC;
  late TextEditingController jumlahC;
  late TextEditingController durasiC;
  late TextEditingController beratC;

  FirebaseFirestore db = FirebaseFirestore.instance;

  void handleCreateVegie(String name) {
    final newVegie = {
      'nama': name,
      'status': false,
    };
    FirebaseFirestore.instance.collection('vegie').doc().set(newVegie);

    nameC.clear();
    descC.clear();
    kategoriC.clear();
    hargaC.clear();
    jumlahC.clear();
    durasiC.clear();
    beratC.clear();
    Get.back();
  }

  void handleDelete(String id) {
    FirebaseFirestore.instance.collection('vegie').doc(id).delete();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    nameC = TextEditingController();
    descC = TextEditingController();
    kategoriC = TextEditingController();
    hargaC = TextEditingController();
    jumlahC = TextEditingController();
    durasiC = TextEditingController();
    beratC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    nameC.dispose();
    descC.dispose();
    kategoriC.dispose();
    hargaC.dispose();
    jumlahC.dispose();
    durasiC.dispose();
    beratC.dispose();
    super.onClose();
  }
}
