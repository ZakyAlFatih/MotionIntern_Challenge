import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/edit_profil_controller.dart';

class EditProfilView extends GetView<EditProfilController> {
  const EditProfilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFFFDC),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Ubah Profil',
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: [],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(21.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(48),
                                child: SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: Image.asset(
                                        'assets/images/profilhitam.png')),
                              ),
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                                size: 24,
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Nama Lengkap",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Natalie Diva",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "nataliediva@gmail.com",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Alamat",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Jl. Sukapura No. 03",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Nomor Telepon",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "0812 3456 7890",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 164,
                        height: 48,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "Simpan",
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
