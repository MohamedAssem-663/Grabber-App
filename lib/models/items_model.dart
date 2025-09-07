class ItemsModel {
  final String image;

  ItemsModel({required this.image});
  static List<ItemsModel> items = [
    ItemsModel(image: 'assets/sliders/Slider 1.png'),
    ItemsModel(image: 'assets/sliders/Slider 2.png'),
    ItemsModel(image: 'assets/sliders/Slider 3.png'),
  ];
}
