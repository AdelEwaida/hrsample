import 'package:flutter/material.dart';

class SocialMediaWidget extends StatefulWidget {
  const SocialMediaWidget({Key? key}) : super(key: key);

  @override
  State<SocialMediaWidget> createState() => _SocialMediaWidgetState();
}

class _SocialMediaWidgetState extends State<SocialMediaWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/twitter.png",
          width: 15,
          height: 15,
          color: Colors.grey[600],
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          "assets/facebook.png",
          width: 15,
          height: 15,
          color: Colors.grey[600],
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          "assets/linkedin.png",
          width: 15,
          height: 15,
          color: Colors.grey[600],
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          "assets/pinterest.png",
          width: 15,
          height: 15,
          color: Colors.grey[600],
        ),
      ],
    );
  }
}
