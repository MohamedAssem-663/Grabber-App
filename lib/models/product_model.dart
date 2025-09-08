class ProductModel {
  final String image;
  final String title;
  final double rate;
  final int rateCount;
  final double price;
  static List<ProductModel> product = [
    ProductModel(
      image: 'assets/Fruits/image 44.png',
      title: 'banana',
      rate: 5,
      rateCount: 899,
      price: 9.3,
    ),
    ProductModel(
      image: 'assets/Fruits/image 42.png',
      title: 'Prpper',
      rate: 4.5,
      rateCount: 599,
      price: 8.99,
    ),
    ProductModel(
      image: 'assets/Fruits/image 45.png',
      title: 'Orange',
      rate: 4.3,
      rateCount: 89,
      price: 5.99,
    ),

    ProductModel(
      image: 'assets/Fruits/image 46.png',
      title: 'Lemon',
      rate: 4,
      rateCount: 499,
      price: 4.99,
    ),
  ];

  ProductModel({
    required this.image,
    required this.title,
    required this.rate,
    required this.rateCount,
    required this.price,
  });
}
