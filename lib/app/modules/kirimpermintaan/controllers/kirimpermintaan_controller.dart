import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KirimpermintaanController extends GetxController {
  late TextEditingController nameC;

  FirebaseFirestore db = FirebaseFirestore.instance;

  void handleCreateVegie(String name) {
    final newVegie = {
      'nama': name,
      'status': false,
    };
    FirebaseFirestore.instance.collection('vegie').doc().set(newVegie);
    nameC.clear();
    Get.back();
  }

  void handleDelete(String id) {
    FirebaseFirestore.instance.collection('vegie').doc(id).delete();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    nameC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    nameC.dispose();
    super.onClose();
  }
}
