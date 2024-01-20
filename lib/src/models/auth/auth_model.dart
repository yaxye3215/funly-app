import 'dart:convert';

AuthModel authFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  String id;
  String username;
  String email;
  String token;

  AuthModel({
    required this.id,
    required this.username,
    required this.email,
    required this.token,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        id: json["_id"],
        username: json["username"],
        email: json["email"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "username": username,
        "email": email,
        "token": token,
      };
}
