import 'package:flutter/material.dart';
import 'package:hus_project/color.dart';
import 'package:iconsax/iconsax.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Good Morning',
                style: secondaryTextStyleJudul,
              ),
              Text(
                'Boiq',
                style: primaryTextStyle20b,
              ),
            ],
          ),
          const Spacer(),
          MaterialButton(
            onPressed: () {},
            padding: const EdgeInsets.all(14),
            child: Icon(
              Iconsax.notification,
              color: primaryColor,
            ),
            shape: CircleBorder(side: BorderSide(color: primaryColor)),
          )
        ],
      ),
    );
  }
}
