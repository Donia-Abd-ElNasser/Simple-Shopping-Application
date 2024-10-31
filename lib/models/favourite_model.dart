import 'package:flutter/cupertino.dart';

import '../models/product_model.dart';

class FavoritesModel {
  static final List<ProductModel> _favorites = [];

  static final ValueNotifier<List<ProductModel>> favoritesNotifier =
      ValueNotifier(_favorites);

  static bool isFavorite(ProductModel product) => _favorites.contains(product);

  static void addFavorite(ProductModel product) {
    if (!_favorites.contains(product)) {
      _favorites.add(product);
      favoritesNotifier.value = List.from(_favorites);
    }
  }

  static void removeFavorite(ProductModel product) {
    if (_favorites.contains(product)) {
      _favorites.remove(product);
      favoritesNotifier.value = List.from(_favorites);
    }
  }

  static List<ProductModel> getFavorites() => _favorites;
}
