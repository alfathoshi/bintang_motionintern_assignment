import 'package:get/get.dart';

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
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
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
  ];
}
