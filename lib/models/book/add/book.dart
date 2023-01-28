class Book {
  String? isbn;
  String? title;
  String? subtitle;
  String? author;
  String? published;
  String? publisher;
  String? pages;
  String? description;
  String? website;
  int? userId;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  Book({
    this.isbn,
    this.title,
    this.subtitle,
    this.author,
    this.published,
    this.publisher,
    this.pages,
    this.description,
    this.website,
    this.userId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        isbn: json['isbn'] as String?,
        title: json['title'] as String?,
        subtitle: json['subtitle'] as String?,
        author: json['author'] as String?,
        published: json['published'] as String?,
        publisher: json['publisher'] as String?,
        pages: json['pages'] as String?,
        description: json['description'] as String?,
        website: json['website'] as String?,
        userId: json['user_id'] as int?,
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        id: json['id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'isbn': isbn,
        'title': title,
        'subtitle': subtitle,
        'author': author,
        'published': published,
        'publisher': publisher,
        'pages': pages,
        'description': description,
        'website': website,
        'user_id': userId,
        'updated_at': updatedAt?.toIso8601String(),
        'created_at': createdAt?.toIso8601String(),
        'id': id,
      };
}
