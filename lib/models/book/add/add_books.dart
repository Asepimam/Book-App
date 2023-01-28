import 'book.dart';

class AddBooks {
  String? message;
  Book? book;

  AddBooks({this.message, this.book});

  factory AddBooks.fromJson(Map<String, dynamic> json) => AddBooks(
        message: json['message'] as String?,
        book: json['book'] == null
            ? null
            : Book.fromJson(json['book'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'book': book?.toJson(),
      };
}
