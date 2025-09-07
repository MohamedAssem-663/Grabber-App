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
      price: 93,
    ),
    ProductModel(
      image: 'assets/Fruits/image 42.png',
      title: 'Prpper',
      rate: 5,
      rateCount: 899,
      price: 93,
    ),
    ProductModel(
      image: 'assets/Fruits/image 45.png',
      title: 'Orange',
      rate: 5,
      rateCount: 899,
      price: 93,
    ),

    ProductModel(
      image: 'assets/Fruits/image 46.png',
      title: 'Lemon',
      rate: 5,
      rateCount: 899,
      price: 93,
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
