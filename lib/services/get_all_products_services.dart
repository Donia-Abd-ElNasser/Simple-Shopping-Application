import '../models/product_model.dart';
import 'api.dart';

class AllProductServices {
  Future<List<ProductModel>> GetAllProducts() async {
    try {
      List<dynamic> data =
          await Api().get(url: 'https://fakestoreapi.com/products');
      List<ProductModel> productList = [];
      for (int i = 0; i < data.length; ++i) {
        productList.add(ProductModel.fromJson(data[i]));
      }
      return productList;
    } on Exception catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }
}
