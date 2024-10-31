import 'package:flutter/material.dart';
import '../models/favourite_model.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});
  static String id = 'Favourite Page';

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    final favorites = FavoritesModel.getFavorites();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.white,
        title: Text(
          'Favourite Collection',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: favorites.isEmpty
          ? const Center(child: Text('No favorites added'))
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final product = favorites[index];
                return ListTile(
                  leading: Image.network(
                    product.image,
                    width: 100,
                  ), // Adjust according to your ProductModel properties
                  title: Text(product.title),
                  subtitle: Text('\$${product.price.toString()}'),
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          FavoritesModel.removeFavorite(product);
                        });
                      },
                      icon: const Icon(Icons.delete)),
                );
              },
            ),
    );
  }
}
