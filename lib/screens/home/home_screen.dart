import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grabber_app/core/Utils/app_colors.dart';
import 'package:grabber_app/models/category_models.dart';
import 'package:grabber_app/models/items_model.dart';
import 'package:grabber_app/models/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.product,
    required this.item,
    required this.category,
  });

  final List<ProductModel> product;
  final List<ItemsModel> item;
  final List<CategoryModel> category;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset('assets/Icons/bike.png', height: 35),
            SizedBox(width: 10),
            Text('61 Hopper street..'),
            SizedBox(width: 10),
            Icon(Icons.keyboard_arrow_down_outlined),
            Spacer(),
            Image.asset('assets/Icons/Vectorr.png', height: 30),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            // banner
            CarouselSlider.builder(
              itemCount: ItemsModel.items.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                        margin: EdgeInsets.all(1.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          image: DecorationImage(
                            image: AssetImage(
                              ItemsModel.items[itemIndex].image,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayAnimationDuration: Duration(seconds: 3),
              ),
            ),
            SizedBox(height: 30),
            // category
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: List.generate(CategoryModel.category.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 60,
                            height: 60,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image.asset(
                              CategoryModel.category[index].image,
                              width: 50,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          CategoryModel.category[index].title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fruits',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
