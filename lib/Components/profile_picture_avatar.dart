import 'package:flutter/material.dart';

class ProfilePictureAvatar extends StatefulWidget {
  final String image;
  const ProfilePictureAvatar({Key? key, required this.image}) : super(key: key);

  @override
  State<ProfilePictureAvatar> createState() => _ProfilePictureAvatarState();
}

class _ProfilePictureAvatarState extends State<ProfilePictureAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        image: DecorationImage(
          image: AssetImage(
            widget.image,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
