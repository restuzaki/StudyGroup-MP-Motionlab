import 'package:get/get.dart';
import 'package:project_motion/models/product_model_api.dart';

import '../service/product_servis.dart';

class DetailProductController extends GetxController {
  final id = Get.arguments['id'];
  var detailProduct = ProductElement().obs;
  var isLoading = true.obs;
  @override
  onInit() {
    fetchDetailProduct();
    super.onInit();
  }

  void fetchDetailProduct() async {
    detailProduct.value =
        await ProductService().getDetailsProducts(id: id) ?? ProductElement();
    isLoading.value = false;
  }
}
