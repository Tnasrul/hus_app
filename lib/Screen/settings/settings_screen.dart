import 'package:flutter/material.dart';
import 'package:hus_project/color.dart';
import 'package:iconsax/iconsax.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Laporan Penjualan',
                style: primaryTextStyle20b,
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
