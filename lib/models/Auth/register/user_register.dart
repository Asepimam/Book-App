class UserRegister {
  String? description;

  UserRegister({this.description});

  factory UserRegister.fromJson(Map<String, dynamic> json) => UserRegister(
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'description': description,
      };
}
