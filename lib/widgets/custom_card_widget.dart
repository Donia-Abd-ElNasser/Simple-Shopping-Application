import 'package:flutter/material.dart';
import '../models/favourite_model.dart';
import '../models/product_model.dart';


class CustomCardWidget extends StatefulWidget {
  const CustomCardWidget({required this.product});
  final ProductModel product;

  @override
  State<CustomCardWidget> createState() => _CustomCardWidgetState();
}

class _CustomCardWidgetState extends State<CustomCardWidget> {
  late bool isFavourite;
  Color color = Colors.white;

  @override
  void initState() {
    super.initState();
    isFavourite = FavoritesModel.isFavorite(widget.product);
    color = isFavourite ? Colors.red : Colors.white;

    // Listen to favoritesNotifier to update icon color when favorites change
    FavoritesModel.favoritesNotifier.addListener(_updateFavoriteStatus);
  }

  void _updateFavoriteStatus() {
    setState(() {
      isFavourite = FavoritesModel.isFavorite(widget.product);
      color = isFavourite ? Colors.red : Colors.white;
    });
  }

  @override
  void dispose() {
    FavoritesModel.favoritesNotifier.removeListener(_updateFavoriteStatus);
    super.dispose();
  }

  void toggleFavorite() {
    setState(() {
      if (isFavourite) {
        FavoritesModel.removeFavorite(widget.product);
      } else {
        FavoritesModel.addFavorite(widget.product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 40,
          color: Colors.grey.withOpacity(0.6),
          spreadRadius: 0,
          offset: const Offset(10, 10),
        ),
      ]),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: GestureDetector(
            onTap: () {
            
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.title,
                      maxLines: 1,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$' '${widget.product.price.toString()}',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                            onPressed: toggleFavorite,
                            icon: Icon(
                              Icons.favorite,
                              color: color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 55,
                  right: 10,
                  child: Image.network(
                    widget.product.image,
                    height: 80,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}