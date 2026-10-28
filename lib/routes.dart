import 'package:flutter_application_testing/pages/ConfirmRegistrationPage.dart';
import 'package:flutter_application_testing/pages/RegistrationPage.dart';
import 'package:flutter_application_testing/pages/detail_produk_page.dart';
import 'package:flutter_application_testing/pages/list_produk_page.dart';
import 'package:flutter_application_testing/pages/mainmenupages.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  // list pages yang ada di aplikasi
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/listProduk";
  static const String detailProduk = "/detail-produk";
  static const String mainMenuPages = "/Mainmenupages";

  // kita tampung kedalam array yang akan kita pasang ke main dart
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduk, page: () => ListProdukPage()),
    GetPage(name: detailProduk, page: () => DetailProdukPage()),
    GetPage(name: mainMenuPages, page: () => MainMenuPage()),
    // others page here dll
  ].obs;
}
