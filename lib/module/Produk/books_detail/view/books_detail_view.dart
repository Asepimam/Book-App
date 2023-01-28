import 'package:flutter/material.dart';
import '../controller/books_detail_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class BooksDetailView extends StatelessWidget {
  const BooksDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BooksDetailController>(
      init: BooksDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("BooksDetail"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: const [],
              ),
            ),
          ),
        );
      },
    );
  }
}
