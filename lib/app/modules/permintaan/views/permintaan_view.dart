import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/permintaan_controller.dart';

class PermintaanView extends GetView<PermintaanController> {
  const PermintaanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: Color(0xff62C172),
        title: const Text(
          'Kirim Permintaan',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xffEFFFDC),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(children: [
            Row(
              children: [
                Text(
                  "Foto Produk",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 76,
                  height: 72,
                  color: Colors.white,
                  child: Icon(Icons.camera_alt_outlined),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(
                  "Nama Produk",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sayur Singkong",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Deskripsi Produk",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Produk fresh dan menyenangkan",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Kategori",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sayuran",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Harga",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Rp50.000",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "jumlah",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "1",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Durasi Tahan",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "2-4 hari",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Berat",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "500",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 164,
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff62C172)),
                  child: Center(
                    child: Text(
                      "Simpan",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      )),
    );
  }
}
