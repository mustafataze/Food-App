import 'package:get/get.dart';
import 'package:untitled2/data/data/repository/popular_product_repo.dart';
import 'package:untitled2/model/products_model.dart';

class popularProductController extends GetxController {
  final popular_product_repo popularProductRepo;
  popularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
    
      
      _popularProductList = [];
      _popularProductList.addAll(product.fromJson(response.body).products);
      print(popularProductList);
      update();
    } else {}
  }
}
