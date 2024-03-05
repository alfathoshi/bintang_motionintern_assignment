import 'package:bintang_motionintern_week_7/app/modules/home/views/home_view.dart';
import 'package:bintang_motionintern_week_7/app/modules/produk/views/produk_view.dart';
import 'package:bintang_motionintern_week_7/app/modules/profile/views/profile_view.dart';
import 'package:bintang_motionintern_week_7/app/modules/riwayat/views/riwayat_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navbar_controller.dart';

// ignore: must_be_immutable
class NavbarView extends GetView<NavbarController> {
  NavbarView({Key? key}) : super(key: key);

  final List<Widget> _pages = [
    HomeView(),
    const ProdukView(),
    const RiwayatView(),
    const ProfileView(),
  ];

  bool profile = false;

  NavbarController navbarController = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: navbarController.selectedindex.value,
            children: _pages,
          )),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: navbarController.selectedindex.value,
          onTap: (index) {
            navbarController.changeIndex(index);
          },
          selectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/home.png'),
                ),
                label: 'Beranda'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/harvest.png'),
                ),
                label: 'Produk'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/transaction.png'),
                ),
                label: 'Riwayat'),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
            ),
          ],
        ),
      ),
      floatingActionButton: MediaQuery.of(context).viewInsets.bottom != 0
          ? null
          : Obx(() => Visibility(
                visible: navbarController.profile.value,
                child: FloatingActionButton(
                  onPressed: () {
                   
                  },
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF62C172),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const ImageIcon(
                    AssetImage('assets/images/add.png'),
                  ),
                ),
              )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
