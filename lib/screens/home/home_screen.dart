import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grabber_app/models/category_models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [
    'assets/sliders/Slider 1.png',
    'assets/sliders/Slider 2.png',
    'assets/sliders/Slider 3.png',
  ];
  List<CategoryModel> category = [
    CategoryModel(image: 'assets/categoty/Fruits.png', title: 'Fruits'),
    CategoryModel(image: 'assets/categoty/Milk & egg.png', title: 'Milk & egg'),
    CategoryModel(image: 'assets/categoty/Beverages.png', title: 'Beverages'),
    CategoryModel(image: 'assets/categoty/Laundry.png', title: 'Laundry'),
    CategoryModel(image: 'assets/categoty/Vegetabl.png', title: 'Vegetabl'),
  ];
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
      body: Column(
        children: [
          // banner
          CarouselSlider.builder(
            itemCount: items.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
                      margin: EdgeInsets.all(1.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        image: DecorationImage(
                          image: AssetImage(items[itemIndex]),
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
              children: List.generate(category.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Image.asset(category[index].image, width: 50),
                      ),
                      SizedBox(height: 15),
                      Text(
                        category[index].title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
