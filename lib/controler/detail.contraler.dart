import 'package:flutter_application_testing/models/produk_model.dart';
import 'package:get/get.dart';

class Detailcontraler extends GetxController {
  late ProdukModel? produk;

  @override
  void onInit() {
    super.onInit();

    produk = Get.arguments as ProdukModel?;
  }
}
