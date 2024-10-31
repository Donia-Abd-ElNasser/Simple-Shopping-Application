class ProductModel {
  final dynamic id;
  final String title;
  final String description;
  final dynamic price;
  final String image;

  final String category;

  ProductModel({
    required this.category,
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      description: jsonData['description'],
      price: jsonData['price'],
      image: jsonData['image'],
      category: jsonData['category'],
    );
  }
}
