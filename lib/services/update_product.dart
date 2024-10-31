

import '../models/product_model.dart';
import 'api.dart';

class UpdateProductService{
  Future<ProductModel> updateProduct ({required String category,
  required String title,
  required String description,
  required String price,
  required int id,
  required String image,}) async {
    print ('url id =$id');
  
   Map<String,dynamic>data =await Api().put(url: 'https://fakestoreapi.com/products/$id',body: {
      'title': title,
'price': price,
'description': description,
'image': image,
'category': category,
    });
    return ProductModel.fromJson(data);
  }
}