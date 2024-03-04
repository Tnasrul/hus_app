import 'package:flutter/material.dart';
import 'package:hus_project/Screen/home/chart_page.dart';
import 'package:hus_project/color.dart';
import 'package:hus_project/data/data.dart';

class RingkasanPenjualan extends StatelessWidget {
  const RingkasanPenjualan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ringkasan Penjualan',
                style: primaryTextStyle14b,
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: primaryTextStyle12l,
                ),
              )
            ],
          ),
          SizedBox(
            height: 142,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: stockPortfolio.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(right: 10),
                  height: 88,
                  width: 156,
                  decoration: BoxDecoration(
                      color: secondaryColor.withOpacity(0.2),
                      border: Border.all(color: primaryColor, width: 0.5),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage:
                            NetworkImage('${stockPortfolio[index].iconUrl}'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '${stockPortfolio[index].symbol}',
                        style: primaryTextStyle12,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '${stockPortfolio[index].name}',
                        style: primaryTextStyle12l,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          LineChartSample2()
        ],
      ),
    );
  }
}
