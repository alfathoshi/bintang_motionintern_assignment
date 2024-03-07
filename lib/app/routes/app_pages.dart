import 'package:get/get.dart';

import 'package:bintang_motionintern_week_7/app/modules/editpassword/bindings/editpassword_binding.dart';
import 'package:bintang_motionintern_week_7/app/modules/editpassword/views/editpassword_view.dart';
import 'package:bintang_motionintern_week_7/app/modules/editprofile/bindings/editprofile_binding.dart';
import 'package:bintang_motionintern_week_7/app/modules/editprofile/views/editprofile_view.dart';
import 'package:bintang_motionintern_week_7/app/modules/kirimpermintaan/bindings/kirimpermintaan_binding.dart';
import 'package:bintang_motionintern_week_7/app/modules/kirimpermintaan/views/kirimpermintaan_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/navbar/bindings/navbar_binding.dart';
import '../modules/navbar/views/navbar_view.dart';
import '../modules/produk/bindings/produk_binding.dart';
import '../modules/produk/views/produk_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/riwayat/bindings/riwayat_binding.dart';
import '../modules/riwayat/views/riwayat_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => NavbarView(),
      binding: NavbarBinding(),
    ),
    GetPage(
      name: _Paths.PRODUK,
      page: () => const ProdukView(),
      binding: ProdukBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT,
      page: () => const RiwayatView(),
      binding: RiwayatBinding(),
    ),
    GetPage(
      name: _Paths.EDITPASSWORD,
      page: () => const EditpasswordView(),
      binding: EditpasswordBinding(),
    ),
    GetPage(
      name: _Paths.EDITPROFILE,
      page: () => EditprofileView(),
      binding: EditprofileBinding(),
    ),
    GetPage(
      name: _Paths.KIRIMPERMINTAAN,
      page: () => const KirimpermintaanView(),
      binding: KirimpermintaanBinding(),
    ),
  ];
}
