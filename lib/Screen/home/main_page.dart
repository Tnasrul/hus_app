import 'package:flutter/material.dart';
import 'package:hus_project/Screen/home/header_page.dart';
import 'package:hus_project/Screen/login/login_screen.dart';
import 'history_transaksi_list.dart';
import 'piutang_penjualan_list.dart';
import 'ringkasan_penjualan_list.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeaderPage(),
        RingkasanPenjualan(),
        PiutangPenjualanList(),
        HistoriTransaksiList()
      ],
    );
  }
}
