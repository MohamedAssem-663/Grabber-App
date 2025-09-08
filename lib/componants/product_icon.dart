import 'package:flutter/material.dart';

class ProductIcon extends StatefulWidget {
  const ProductIcon({super.key});

  @override
  State<ProductIcon> createState() => _ProductIconState();
}

class _ProductIconState extends State<ProductIcon> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        /// أدوات التحكم في العدد
        quantity == 0
            ? IconButton(
                constraints: const BoxConstraints(),
                visualDensity: VisualDensity.compact,
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.add, size: 35),
                ),
                onPressed: () {
                  setState(() {
                    quantity++;
                  });
                },
              )
            : Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(100),
                ),
                elevation: 4,
                child: Row(
                  children: [
                    /// زرار سلة المهملات (يحذف المنتج)
                    IconButton(
                      constraints: const BoxConstraints(),
                      visualDensity: VisualDensity.compact,
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          quantity = 0;
                        });
                      },
                    ),

                    /// زرار ناقص
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      visualDensity: VisualDensity.compact,
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          if (quantity > 0) quantity--;
                        });
                      },
                    ),

                    /// العدد
                    Text(
                      '$quantity',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    /// زرار زائد
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      visualDensity: VisualDensity.compact,
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
