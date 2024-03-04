import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hus_project/color.dart';
import 'package:hus_project/data/data.dart';

class HistoriTransaksiList extends StatelessWidget {
  const HistoriTransaksiList({super.key});

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
                'History Transaksi',
                style: primaryTextStyle14b,
              ),
              MaterialButton(
                onPressed: () {},
                child: Text('View All', style: primaryTextStyle12l),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: stockPortfolio.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 2),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 0.5, color: primaryColor.withOpacity(0.3))),
                  color: secondaryColor.withOpacity(0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${stockPortfolio[index].symbol}',
                        style: primaryTextStyle12),
                    Text(
                      '${stockPortfolio[index].name}',
                      style: primaryTextStyle12l,
                    ),
                    Text(
                      '${stockPortfolio[index].name}',
                      style: primaryTextStyle12l,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
