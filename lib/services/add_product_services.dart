

import '../models/product_model.dart';
import 'api.dart';

class AddProduct{
  Future<ProductModel> addProduct ({required String category,
  required String title,
  required String description,
  required String price,
  required String image,}) async {
  
   Map<String,dynamic>data =await Api().post(url: 'https://fakestoreapi.com/products',body: {
      'title': title,
'price': price.toString(),
'description': description,
'image': image,
'category': category,
    });
    return ProductModel.fromJson(data);
  }
}