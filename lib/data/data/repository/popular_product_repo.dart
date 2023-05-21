import 'package:get/get.dart';
import 'package:untitled2/data/data/api/api_client.dart';
import 'package:untitled2/utils/app_constants.dart';

class popular_product_repo extends GetxService {
  final api api_client;
  popular_product_repo({required this.api_client});

  Future<Response> getPopularProductList() async {
    return await api_client.getData(appConstants.POPULAR_PRODUCT_URI);
  }
}
