import 'package:get/get.dart';
import 'package:untitled2/controllers/popularProductController.dart';
import 'package:untitled2/data/data/api/api_client.dart';
import 'package:untitled2/data/data/repository/popular_product_repo.dart';
import 'package:untitled2/utils/app_constants.dart';

Future<void> init() async {
  Get.lazyPut(() => api(appBaseUrl: appConstants.BASE_URL));
  Get.lazyPut(() => popular_product_repo(api_client: Get.find()));
  Get.lazyPut(() => popularProductController(popularProductRepo: Get.find()));

}
