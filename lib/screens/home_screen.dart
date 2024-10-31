
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/product_model.dart';
import '../services/get_all_products_services.dart';
import '../widgets/Horizontal_list_view.dart';
import '../widgets/custom_appBar.dart';
import '../widgets/custom_card_widget.dart';
import '../widgets/custom_navigation_bar.dart';

import 'favourite_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState(){
    const GetCollection();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
          child: CustomAppBar(
            icon: FontAwesomeIcons.bars,
            text: 'New Collection',
            onPressed: () {
              Navigator.pushNamed(context, FavouritePage.id);
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: HorizontalListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 35),
            ),
            const SliverToBoxAdapter(
              child: GetCollection(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CategoryBar(), // Updated CategoryBar here
    );
  }
}

class GetCollection extends StatelessWidget {
  const GetCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: AllProductServices().GetAllProducts(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProductModel> products = snapshot.data!;
          return GridView.builder(
            itemCount: products.length,
            clipBehavior: Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 50,
              childAspectRatio: 1.2,
            ),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return CustomCardWidget(product: products[index]);
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

