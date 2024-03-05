import 'package:bintang_motionintern_week_7/app/modules/navbar/views/navbar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      home: NavbarView(),
      getPages: AppPages.routes,
    ),
  );
}
