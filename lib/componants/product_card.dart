import 'package:flutter/material.dart';
import 'package:grabber_app/componants/custom_text.dart';
import 'package:grabber_app/componants/product_icon.dart';
import 'package:grabber_app/componants/product_rating.dart';
import 'package:grabber_app/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(ProductModel.product.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 145,
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          ProductModel.product[index].image,
                          height: 100,
                        ),
                      ),
                    ),
                    Positioned(right: 5, bottom: 10, child: ProductIcon()),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Customtext(text: ProductModel.product[index].title),
                      SizedBox(height: 10),
                      BroductRating(
                        rating: ProductModel.product[index].rate,
                        count: ProductModel.product[index].rateCount,
                      ),
                      SizedBox(height: 10),

                      Customtext(
                        text:
                            "\$${ProductModel.product[index].price.toString()}",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
