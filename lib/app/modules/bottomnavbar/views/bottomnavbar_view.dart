import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_challenge/app/modules/beranda/views/beranda_view.dart';
import 'package:motion_challenge/app/modules/produk/views/produk_view.dart';
import 'package:motion_challenge/app/modules/profile/views/profile_view.dart';
import 'package:motion_challenge/app/modules/riwayat/views/riwayat_view.dart';

import '../controllers/bottomnavbar_controller.dart';

class BottomnavbarView extends GetView<BottomnavbarController> {
  const BottomnavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomnavbarController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              BerandaView(),
              ProdukView(),
              RiwayatView(),
              ProfileView()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_max_outlined), label: 'Beranda'),
            BottomNavigationBarItem(
                icon: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset('assets/images/produk.png')),
                label: 'Produk'),
            BottomNavigationBarItem(
                icon: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset('assets/images/riwayat.png')),
                label: 'Riwayat'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ],
        ),
      );
    });
  }
}
