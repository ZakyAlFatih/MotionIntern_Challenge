import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ubah_pass_controller.dart';

class UbahPassView extends GetView<UbahPassController> {
  const UbahPassView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFFFDC),
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: Color(0xff62C172),
        title: const Text(
          'Ubah Password',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(children: [
          Row(
            children: [
              Text(
                "Password Lama",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Divider(),
          Row(
            children: [
              Text(
                "Password Baru",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Divider(),
          Row(
            children: [
              Text(
                "Konfirmasi Password Baru",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 350,
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
    );
  }
}
