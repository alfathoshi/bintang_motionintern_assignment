import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/widgets/searchbox.dart';
import '../../../shared/widgets/vegiecard.dart';
import '../controllers/produk_controller.dart';

class ProdukView extends GetView<ProdukController> {
  const ProdukView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF4FBF4),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                expandedTitleScale: 1,
                title: SearchBox(),
              ),
              pinned: true,
              expandedHeight: 136,
              toolbarHeight: 80,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'List Produk',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  )
                ],
              ),
              backgroundColor: const Color(0xFF62C172),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400,
                mainAxisSpacing: 0,
                childAspectRatio: 0.8,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('vegie')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Text('Mohon tunggu...');
                      }
                      if (snapshot.hasData == false) {
                        return const Text('Tidak ada data!');
                      }
                      return Column(
                        children: [
                          for (var document in snapshot.data!.docs)
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: VegieCard(
                                  id: document.id,
                                  nama: document.data()['nama'],
                                  status: document.data()['status']),
                            ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
