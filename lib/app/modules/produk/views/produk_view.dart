import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/produk_controller.dart';

class ProdukView extends GetView<ProdukController> {
  const ProdukView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProdukView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProdukView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
