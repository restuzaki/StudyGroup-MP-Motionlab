import 'package:get/get.dart';
import 'package:project_motion/models/product_model.dart';
import 'package:project_motion/utils/data_dummy.dart';
import 'package:project_motion/service/product_servis.dart';

import '../models/product_model_api.dart';

class HomeController extends GetxController {
  String selectedCategory = 'All';
  List<ProductModel> filteredProducts = [];
  var product = Product().obs;
  var isLoading = true.obs;

  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProduct();
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

  void fetchProduct() async {
    product.value = await ProductService().getProducts() ?? Product();
    isLoading.value = false;
  }

  void onTabTapped(int index) {
    currentIndex.value = index;

    if (index == 1) {
      Get.toNamed('/favorites');
    } else if (index == 2) {
      Get.toNamed('/profile');
    }
  }
}
