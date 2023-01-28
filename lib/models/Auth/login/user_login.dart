class UserLogin {
  String? message;
  String? token;

  UserLogin({this.message, this.token});

  factory UserLogin.fromJson(Map<String, dynamic> json) => UserLogin(
        message: json['message'] as String?,
        token: json['token'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'token': token,
      };
}
