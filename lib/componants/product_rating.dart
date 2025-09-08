import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BroductRating extends StatelessWidget {
  const BroductRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final num count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 6),
        Text('$rating', style: TextStyle(fontSize: 18)),
        const SizedBox(width: 5),
        Opacity(
          opacity: .9,
          child: Text('($count)', style: TextStyle(fontSize: 16)),
        ),
      ],
    );
  }
}
