import 'package:get/get.dart';
import 'package:project_motion/models/product_model.dart';
import 'package:project_motion/utils/data_dummy.dart';
import 'package:project_motion/service/product_servis.dart';
import 'package:project_motion/service/remote_datasource_service.dart';
import 'package:project_motion/controller/favorite_controller.dart';

import '../models/product_model_api.dart';

class HomeController extends GetxController {
  String selectedCategory = 'All';
  List<ProductModel> filteredProducts = [];

  RemoteDatasourceService remoteDatasourceService = RemoteDatasourceService();
  bool isLoading = true;
  Product product = Product();
  List<String> categoryList = [];
  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getProduct();
    getProductCategoryList();
    filteredProducts = DataDummy.listDummyProducts;
  }

  void filterProducts(String category) {
    selectedCategory = category;
    update();

    if (category == 'All') {
      filteredProducts = DataDummy.listDummyProducts;
      update();
    } else {
      filteredProducts = DataDummy.listDummyProducts
          .where((product) => product.type == category)
          .toList();
      update();
    }
  }

  void getProduct() async {
    try {
      isLoading = true;
      update();

      product = await remoteDatasourceService.getProductsService();
      update();
    } finally {
      isLoading = false;
      update();
    }
  }

  void getProductCategoryList() async {
    try {
      isLoading = true;
      update();

      categoryList =
          await remoteDatasourceService.getProductCategoryListService();
      update();
    } catch (e) {
      Get.snackbar('Get Data Failed', e.toString());
    } finally {
      isLoading = false;
      update();
    }
  }

  final FavoriteController favoriteController = Get.find<FavoriteController>();

  // Periksa apakah produk adalah favorit
  bool isFavorite(int? productId) {
    if (productId == null) return false;
    return favoriteController.favoriteProducts.contains(productId);
  }

  // Toggle status favorit produk
  void toggleFavorite(int productId) {
    favoriteController.toggleFavorite(productId);
  }

  void onTabTapped(int index) {
    currentIndex.value = index;

    if (index == 1) {
      Get.toNamed('/favorite');
    } else if (index == 2) {
      Get.toNamed('/profil');
    }
  }
}
