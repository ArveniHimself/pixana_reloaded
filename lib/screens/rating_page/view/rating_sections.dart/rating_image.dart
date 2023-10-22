import 'package:flutter/material.dart';

// A stateful widget for displaying an image with a given aspect ratio.
class RatingImage extends StatefulWidget {
  final double aspectRatio; // The aspect ratio of the image.

  const RatingImage({Key? key, required this.aspectRatio}) : super(key: key);

  @override
  State<RatingImage> createState() => _RatingImageState();
}

class _RatingImageState extends State<RatingImage> {
  @override
  Widget build(BuildContext context) {
    // Build a container with the specified aspect ratio and the image.
    return AspectRatio(
      aspectRatio: widget.aspectRatio,
      child: Container(
        color: Colors.yellow, // You can insert the actual image here.
      ),
    );
  }
}
