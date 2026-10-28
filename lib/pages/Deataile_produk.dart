import 'package:flutter/material.dart';
import 'package:flutter_application_testing/controler/list_produk_controller.dart';
import 'package:get/get.dart';

class ProdukListPage extends StatelessWidget {
  ProdukListPage({super.key});

  final controller = Get.put(ListProdukController());
  final Color cardColor = const Color.fromRGBO(255, 186, 186, 186);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Produk Saya')),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: controller.listProduk.length,
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final produk = controller.listProduk[index];
          return Card(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 6,
              ),
              leading: const CircleAvatar(
                child: Icon(Icons.shopping_bag_outlined),
              ),
              title: Text(
                produk.namaProduk,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(produk.harga),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Get.toNamed('/detail-produk', arguments: produk),
            ),
          );
        },
      ),
    );
  }
}
