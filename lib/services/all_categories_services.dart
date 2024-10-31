import 'api.dart';

class AllCategoriesServices {
  Future<List<dynamic>> GetAllCattegories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
