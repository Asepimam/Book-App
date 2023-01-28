import 'package:dio/dio.dart';
import 'package:fhe_template/models/book/add/add_books.dart';
import 'package:fhe_template/models/book/all/books.dart';

class BookService {
  Future<Books> getBooks(String token) async {
    var response = await Dio().get(
      "https://basic-book-crud-e3u54evafq-et.a.run.app/api/books",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token"
        },
      ),
    );
    var obj = response.data;
    return Books.fromJson(obj);
  }

  Future<AddBooks> addBook(String token) async {
    var response = await Dio().post(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token"
        },
      ),
      data: {
        "name": "morpheus",
        "job": "programmer",
      },
    );
    var obj = response.data;
    return AddBooks.fromJson(obj);
  }
}
