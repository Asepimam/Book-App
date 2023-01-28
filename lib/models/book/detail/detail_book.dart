class DetailBook {
  int? id;
  int? userId;
  String? isbn;
  String? title;
  String? subtitle;
  String? author;
  String? published;
  String? publisher;
  int? pages;
  String? description;
  String? website;
  DateTime? createdAt;
  DateTime? updatedAt;

  DetailBook({
    this.id,
    this.userId,
    this.isbn,
    this.title,
    this.subtitle,
    this.author,
    this.published,
    this.publisher,
    this.pages,
    this.description,
    this.website,
    this.createdAt,
    this.updatedAt,
  });

  factory DetailBook.fromJson(Map<String, dynamic> json) => DetailBook(
        id: json['id'] as int?,
        userId: json['user_id'] as int?,
        isbn: json['isbn'] as String?,
        title: json['title'] as String?,
        subtitle: json['subtitle'] as String?,
        author: json['author'] as String?,
        published: json['published'] as String?,
        publisher: json['publisher'] as String?,
        pages: json['pages'] as int?,
        description: json['description'] as String?,
        website: json['website'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'isbn': isbn,
        'title': title,
        'subtitle': subtitle,
        'author': author,
        'published': published,
        'publisher': publisher,
        'pages': pages,
        'description': description,
        'website': website,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };
}
