import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:motion_challenge/app/modules/permintaan/views/permintaan_view.dart';

import '../controllers/produk_controller.dart';

class ProdukView extends GetView<ProdukController> {
  final _textEditingController = TextEditingController();

  void handleCreateTodo() {
    final newItem = {
      "name": _textEditingController.text,
      "status": false,
    };
    FirebaseFirestore.instance
        .collection('motion-challenge')
        .doc()
        .set(newItem);
    _textEditingController.text = "";
  }

// Fungsi akan dipanggil ketika todo di checklist/unchecklist
  void handleToggleTodo(String id, bool status) {
    final updatedData = {
      'status': !status,
    };

    FirebaseFirestore.instance
        .collection('motion-challenge')
        .doc(id)
        .update(updatedData);
  }

// Fungsi akan dipanggil ketika menghapus salah satu todo
  void handleDeleteTodo(String id) {
    FirebaseFirestore.instance.collection('motion-challenge').doc(id).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 190,
            decoration: BoxDecoration(color: Colors.green),
            child: Padding(
              padding: const EdgeInsets.all(21.0),
              child: Column(children: [
                SizedBox(height: 30),
                Row(
                  children: [
                    Text("List Produk",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 336,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              'Cari Produk',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),

          // Set the height directly on the container

          Container(
            width: 400,
            height: 400,
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('motion-challenge')
                  .snapshots(),
              builder: (context, snapshot) {
                // Handle loading and error states
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 14,
                    crossAxisCount: 2,
                  ),
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    var document = snapshot.data!.docs[index];
                    var data = document.data() as Map<String, dynamic>;

                    var name = data['name'] ?? 'No Name';
                    var status = data['status'] ?? false;

                    return shopItem(
                      id: document.id,
                      name: name,
                      status: status,
                      onDelete: handleDeleteTodo,
                      onToggle: handleToggleTodo,
                    );
                  },
                );
              },
            ),
          ),
          Stack(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                  ),
                  child: Ink(
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: Colors.green,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.to(PermintaanView());
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ]),
          Stack(children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                            bottom: 20,
                            right: 20,
                            left: 20,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            controller: _textEditingController,
                            decoration: const InputDecoration(
                              hintText: 'Add a new  item',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 20,
                          right: 20,
                        ),
                        child: Ink(
                          decoration: const ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.green,
                          ),
                          child: IconButton(
                            onPressed: () {
                              handleCreateTodo();
                            },
                            icon: const Icon(
                              Icons.add,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ],
      )),
    ));
  }
}

class shopItem extends StatelessWidget {
  final String id;
  final String name;
  final bool status;
  final void Function(String) onDelete;
  final void Function(String, bool) onToggle;

  const shopItem({
    super.key,
    required this.id,
    required this.name,
    required this.status,
    required this.onDelete,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 163,
          height: 90,
          color: Color(0xffD9FCAF),
          child: Image.asset('assets/images/brokoli.png'),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: ListTile(
            onTap: () {
              onToggle(id, status);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tileColor: Colors.white,
            leading: Icon(
              status ? Icons.check_box : Icons.check_box_outline_blank,
              color: const Color(0xFF5F52EE),
            ),
            title: Text(
              name,
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xFF3A3A3A),
                decoration: status ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.symmetric(vertical: 12),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                color: Colors.white,
                iconSize: 18,
                icon: const Icon(Icons.delete),
                onPressed: () {
                  onDelete(id);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
