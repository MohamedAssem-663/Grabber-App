class CategoryModel {
  String image;
  String title;
  static List<CategoryModel> category = [
    CategoryModel(image: 'assets/categoty/Fruits.png', title: 'Fruits'),
    CategoryModel(image: 'assets/categoty/Milk & egg.png', title: 'Milk & egg'),
    CategoryModel(image: 'assets/categoty/Beverages.png', title: 'Beverages'),
    CategoryModel(image: 'assets/categoty/Laundry.png', title: 'Laundry'),
    CategoryModel(image: 'assets/categoty/Vegetabl.png', title: 'Vegetable'),
  ];
  CategoryModel({required this.image, required this.title});
}
