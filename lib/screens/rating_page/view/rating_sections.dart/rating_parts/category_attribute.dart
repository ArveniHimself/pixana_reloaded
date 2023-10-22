import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class CategoryAttribute extends StatefulWidget {
  const CategoryAttribute({super.key});

  @override
  State<CategoryAttribute> createState() => _CategoryAttributeState();
}

class _CategoryAttributeState extends State<CategoryAttribute> {
  double _rating = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 1.5),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 12, bottom: 10),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w800),
                children: <TextSpan>[
                  TextSpan(
                    text: "Category Attribute",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 0),
            ),
            child: SmoothStarRating(
              rating: _rating,
              onRatingChanged: (newRating) => setState(() {
                _rating = newRating;
              }),
              size: 40,
              filledIconData: Icons.star,
              halfFilledIconData: Icons.star_half,
              defaultIconData: Icons.star_border,
              starCount: 5,
              allowHalfRating: true,
              spacing: 3,
              color: Colors.yellow[600],
              borderColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
