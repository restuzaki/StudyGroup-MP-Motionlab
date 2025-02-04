import 'dart:convert';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:project_motion/models/product_model.dart';

class FavoriteController extends GetxController {
  var favoriteProducts = <int>[].obs; // Menyimpan ID produk favorit
  List<ProductModel> Products = [];
  bool isLoading = true;
  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getFavorites(); // Memuat data favorit dari SharedPreferences saat aplikasi dimulai
    isLoading = false;
  }

  // Toggle status favorit produk
  Future<void> toggleFavorite(int productId) async {
    if (favoriteProducts.contains(productId)) {
      favoriteProducts.remove(productId); // Hapus dari favorit jika sudah ada
    } else {
      favoriteProducts.add(productId); // Tambahkan ke favorit jika belum ada
    }
    await saveFavorites(); // Simpan ke SharedPreferences setelah di-toggle
  }

  // Simpan daftar produk favorit ke SharedPreferences
  Future<void> saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('favorites', jsonEncode(favoriteProducts));
  }

  // Muat daftar produk favorit dari SharedPreferences
  Future<void> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final String? favoritesString = prefs.getString('favorites');
    if (favoritesString != null) {
      favoriteProducts.value = List<int>.from(jsonDecode(favoritesString));
    }
    isLoading = false;
    update();
  }

  // Periksa apakah produk adalah favorit
  bool isFavorite(int? productId) {
    if (productId == null) return false;
    return favoriteProducts
        .contains(productId); // Cek apakah ID produk ada dalam daftar favorit
  }

  void onTabTapped(int index) {
    currentIndex.value = index;
    if (index == 0) {
      Get.toNamed('/home');
    } else if (index == 1) {
      Get.toNamed('/favorite');
    } else if (index == 2) {
      Get.toNamed('/profil');
    }
  }
}
