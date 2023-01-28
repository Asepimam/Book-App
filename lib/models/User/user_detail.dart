class UserDetail {
  String? id;
  String? name;
  String? emailVerifiedAt;
  String? createdAt;
  String? updateAt;

  UserDetail({
    this.id,
    this.name,
    this.emailVerifiedAt,
    this.createdAt,
    this.updateAt,
  });

  factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
        id: json['id'] as String?,
        name: json['name'] as String?,
        emailVerifiedAt: json['email_verified_at'] as String?,
        createdAt: json['created_at'] as String?,
        updateAt: json['update_at'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email_verified_at': emailVerifiedAt,
        'created_at': createdAt,
        'update_at': updateAt,
      };
}
