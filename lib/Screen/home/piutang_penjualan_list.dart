import 'package:flutter/material.dart';
import 'package:hus_project/color.dart';
import 'package:hus_project/data/data.dart';

class PiutangPenjualanList extends StatelessWidget {
  const PiutangPenjualanList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Piutang Penjualan',
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
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: stockPortfolio.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 1),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1, color: primaryColor.withOpacity(0.3))),
                  color: secondaryColor.withOpacity(0.3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage:
                              NetworkImage('${stockPortfolio[index].iconUrl}'),
                        ),
                        const SizedBox(width: 13),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${stockPortfolio[index].symbol}',
                              style: primaryTextStyle12,
                            ),
                            Text(
                              '${stockPortfolio[index].name}',
                              style: primaryTextStyle12l,
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${stockPortfolio[index].price}',
                          style: primaryTextStyle12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
