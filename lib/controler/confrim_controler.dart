import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String alamat;
  late String jenisKelamin;
  late String nomerWa;
  late String email;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments; // menangkap semua data dari RegistrationPage
    nama = arguments['name'] ?? '';
    alamat = arguments['alamat'] ?? '';
    jenisKelamin = arguments['jenis_kelamin'] ?? '';
    nomerWa = arguments['nomer_wa'] ?? '';
    email = arguments['email'] ?? '';
  }
}
