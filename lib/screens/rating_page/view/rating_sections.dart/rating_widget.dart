import 'package:flutter/material.dart';
import 'package:pixana_reloaded/screens/rating_page/view/rating_sections.dart/rating_parts/category_attribute.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({super.key});

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.95,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryAttribute(),
            CategoryAttribute(),
            CategoryAttribute(),
          ],
        ),
      ),
    );
  }
}
