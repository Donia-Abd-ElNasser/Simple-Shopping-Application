import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../services/categories_services.dart';
import '../widgets/custom_card_widget.dart';

class JewelleryPage extends StatelessWidget {
  const JewelleryPage({super.key});
static String id ='Jewllery Category';
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
        iconTheme: IconThemeData( color: Theme.of(context).primaryColor,),
        backgroundColor:Colors.white ,
        title: Text('Jewellery Collection',style: TextStyle(color:Theme.of(context).primaryColor ,fontWeight: FontWeight.bold),),
      ),
      body:
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
        child: FutureBuilder<List<ProductModel>>(
          future: CategoriesServices().GetCategoriesProducts(categoryName:"jewelery"),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(

                child: CircularProgressIndicator(color: Theme.of(context).primaryColor),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else if (!snapshot.hasData || snapshot.data == null) {
              return const Center(
                child: Text('No data available'),
              );
            } else {
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                itemCount: products.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .8,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 50,
                ),
                itemBuilder: (context, index) {
                  return CustomCardWidget(product: products[index], );
                },
              );
            }
          },
        ),
      ),
    );
  }
}