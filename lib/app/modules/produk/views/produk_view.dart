import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../shared/widgets/searchbox.dart';
import '../../../shared/widgets/vegiecard.dart';
import '../controllers/produk_controller.dart';

// ignore: must_be_immutable
class ProdukView extends GetView<ProdukController> {
  const ProdukView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF62C172),
          toolbarHeight: 140,
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
              ),
              SearchBox(),
            ],
          ),
        ),
        backgroundColor: const Color(0xFFF4FBF4),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('vegie').snapshots(),
          builder: (context, snapshot) {
            var listV = snapshot.data!.docs;
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text('Mohon tunggu...');
            }
            if (snapshot.hasData == false) {
              return const Text('Tidak ada data!');
            }
            return GridView.builder(
              itemCount: listV.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: VegieCard(
                          id: listV[index].id,
                          nama: listV[index].data()['nama'],
                          status: listV[index].data()['status']),
                    ),
                  ],
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.87,
              ),
            );
          },
        ),
      ),
    );
  }
}

 // CustomScrollView(slivers: [
          //   SliverAppBar(
          //     flexibleSpace: FlexibleSpaceBar(
          //       titlePadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          //       expandedTitleScale: 1,
          //       title: SearchBox(),
          //     ),
          //     pinned: true,
          //     expandedHeight: 136,
          //     toolbarHeight: 80,
          //     title: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'List Produk',
          //           style: GoogleFonts.poppins(
          //             fontSize: 20,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white,
          //           ),
          //         ),
          //         const SizedBox(
          //           height: 25,
          //         )
          //       ],
          //     ),
          //     backgroundColor: const Color(0xFF62C172),

          // SliverToBoxAdapter(
        //     child: StreamBuilder(
        //   stream: FirebaseFirestore.instance.collection('vegie').snapshots(),
        //   builder: (context, snapshot) {
        //     var listV = snapshot.data!.docs;
        //     if (snapshot.connectionState == ConnectionState.waiting) {
        //       return const Text('Mohon tunggu...');
        //     }
        //     if (snapshot.hasData == false) {
        //       return const Text('Tidak ada data!');
        //     }
        //     return GridView.builder(
        //       itemCount: listV.length,
        //       itemBuilder: (context, index) {
        //         return Column(
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.all(16.0),
        //               child: VegieCard(
        //                   id: listV[index].id,
        //                   nama: listV[index].data()['nama'],
        //                   status: listV[index].data()['status']),
        //             ),
        //           ],
        //         );
        //       },
        //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2,
        //         mainAxisSpacing: 1,
        //         childAspectRatio: 0.2,
        //       ),
        //     );
        //   },
        // )
        // SliverGrid(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     mainAxisSpacing: 1,
        //     childAspectRatio: 0.2,
        //   ),
        //   delegate: SliverChildBuilderDelegate(
        //     (context, snapshot) {
        //       return StreamBuilder(
        //         stream: FirebaseFirestore.instance
        //             .collection('vegie')
        //             .snapshots(),
        //         builder: (context, snapshot) {
        //           if (snapshot.connectionState == ConnectionState.waiting) {
        //             return const Text('Mohon tunggu...');
        //           }
        //           if (snapshot.hasData == false) {
        //             return const Text('Tidak ada data!');
        //           }
        //           return Column(
        //             children: [
        //               for (var document in snapshot.data!.docs)
        //                 Padding(
        //                   padding: const EdgeInsets.all(16.0),
        //                   child: VegieCard(
        //                       id: document.id,
        //                       nama: document.data()['nama'],
        //                       status: document.data()['status']),
        //                 ),
        //             ],
        //           );
        //         },
        //       );
        //     },
        //     childCount: 2
        //   ),
        // ),
        // ),
