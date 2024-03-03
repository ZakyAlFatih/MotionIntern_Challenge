import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_challenge/app/modules/editProfil/views/edit_profil_view.dart';
import 'package:motion_challenge/app/modules/ubahPass/views/ubah_pass_view.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFFFDC),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(color: Color(0xff62C172)),
            child: Row(children: [
              SizedBox(
                width: 20,
              ),
              SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/images/profil.png')),
              SizedBox(
                width: 24,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 82,
                  ),
                  Text(
                    'Natalie Diva',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'nataliediva@gmail.com',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                width: 80,
              ),
              IconButton(
                  onPressed: () => Get.to(EditProfilView()),
                  icon: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset("assets/images/brush.png"),
                  )),
            ]),
          ),
          SizedBox(
            height: 36,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Nama Lengkap",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Natalie Diva",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "nataliediva@gmail.com",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Nomor Telepon",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "0812 3456 7890",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Alamat",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Jl. Sukapura No. 03",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Text(
                      "Keamanan",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Ubah Password",
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    IconButton(
                        onPressed: () => Get.to(UbahPassView()),
                        icon: Icon(Icons.arrow_forward_ios_outlined))
                  ],
                ),
                Divider(),
              ],
            ),
          )
        ]),
      )),
    );
  }
}
