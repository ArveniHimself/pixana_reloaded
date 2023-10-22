import 'package:flutter/material.dart';

//AnimatedCoinButton shows current balance of
class AnimatedTokenButton extends StatelessWidget {
  final Color foregroundWidgetColor;

  const AnimatedTokenButton({required this.foregroundWidgetColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.savings, color: foregroundWidgetColor),
        const SizedBox(width: 10),
        Text(
          "Coins",
          style: TextStyle(color: foregroundWidgetColor),
        ),
        //user can get more tokens by clickling on this button
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color: foregroundWidgetColor,
          ),
        )
      ],
    );
  }
}
