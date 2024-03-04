import 'package:flutter/material.dart';
import 'package:hus_project/color.dart';

class ReportsPembangunan extends StatefulWidget {
  const ReportsPembangunan({Key? key}) : super(key: key);

  @override
  State<ReportsPembangunan> createState() => _ReportsPembangunanState();
}

class _ReportsPembangunanState extends State<ReportsPembangunan> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Laporan Pembangunan',
                  style: primaryTextStyle20b,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 45,
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(0),
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: primaryColor,
                      ),
                      hintText: 'Cari Laporan...',
                      hintStyle: primaryTextStyle14l,
                      fillColor: secondaryColor,
                      filled: true,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: primaryColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: primaryColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
