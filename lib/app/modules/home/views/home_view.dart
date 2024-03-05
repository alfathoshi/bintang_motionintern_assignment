import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../shared/widgets/searchbox.dart';
import '../../../shared/widgets/vegiecard.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final scrollController = ScrollController();
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
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: VegieCard(nama: 'Brokoli', status: true),
                  );
                },
                childCount: 9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
