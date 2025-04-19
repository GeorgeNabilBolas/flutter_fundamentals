import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/business_card_app/models/contact_method.dart';
import 'package:flutter_fundamentals/business_card_app/widgets/Jop_description_widget.dart';
import 'package:flutter_fundamentals/business_card_app/widgets/contact_widget.dart';
import 'package:flutter_fundamentals/business_card_app/widgets/name_widget.dart';
import 'package:flutter_fundamentals/business_card_app/widgets/progile_image_widget.dart';

class BusinessCardWidget extends StatelessWidget {
  const BusinessCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffC9E0FD),
        elevation: 0,
      ),
      backgroundColor: const Color(0xffC9E0FD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            const ProfileImageWidget(),
            const NameWidget(),
            const JopDescriptionWidget(),
            const Divider(
              color: Colors.black87,
              endIndent: 60,
              indent: 60,
            ),
            ContactWidget(type: PhoneType()),
            ContactWidget(type: EmailType()),
          ],
        ),
      ),
    );
  }
}
