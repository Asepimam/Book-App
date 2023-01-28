import 'package:flutter/material.dart';
import '../controller/book_edit_add_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class BookEditAddView extends StatelessWidget {
  const BookEditAddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookEditAddController>(
      init: BookEditAddController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("BookEditAdd"),
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
