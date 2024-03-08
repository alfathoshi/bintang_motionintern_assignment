import 'package:flutter/material.dart';

class VegieModel {
  String nama;
  String id;
  bool status;
  TextEditingController textEditingController;
  VegieModel({
    required this.id,
    required this.nama,
    required this.status,
    required this.textEditingController
  });
}
