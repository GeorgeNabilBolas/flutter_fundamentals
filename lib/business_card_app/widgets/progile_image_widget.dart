import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset('lib/business_card_app/images/image.png'),
      ),
    );
  }
}
