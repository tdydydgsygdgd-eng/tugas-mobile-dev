import 'package:flutter_application_testing/controler/list_produk_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Produk Saya')),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => RefreshIndicator(
            onRefresh: () async {
              await controller.refreshProduk();
            },
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(12),
              itemCount: controller.listProduk.length,
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                final produk = controller.listProduk[index];
                return Dismissible(
                  key: ValueKey(produk.namaProduk),
                  direction: DismissDirection.startToEnd,
                  onDismissed: (direction) {
                    controller.hapusProduk(index);
                  },
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
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
                    onTap: () =>
                        Get.toNamed('/detail-produk', arguments: produk),
                    onLongPress: () {
                      final size = MediaQuery.of(context).size;
                      showMenu(
                        context: context,
                        position: RelativeRect.fromLTRB(
                          size.width * 0.2,
                          size.height * 0.35,
                          size.width * 0.2,
                          size.height * 0.35,
                        ),
                        items: [
                          const PopupMenuItem(
                            value: 'detail',
                            child: Row(
                              children: [
                                Icon(Icons.info_outline, color: Colors.blue),
                                SizedBox(width: 8),
                                Text('Lihat Detail'),
                              ],
                            ),
                          ),
                          const PopupMenuItem(
                            value: 'hapus',
                            child: Row(
                              children: [
                                Icon(Icons.delete_outline, color: Colors.red),
                                SizedBox(width: 8),
                                Text(
                                  'Hapus Produk',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ).then((value) {
                        if (value == 'detail') {
                          Get.toNamed('/detail-produk', arguments: produk);
                        } else if (value == 'hapus') {
                          controller.hapusProduk(index);
                          Get.snackbar(
                            'Dihapus',
                            '${produk.namaProduk} berhasil dihapus',
                            snackPosition: SnackPosition.BOTTOM,
                          );
                        }
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
