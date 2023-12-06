// To parse this JSON data, do
//     final userModel = userModelFromJson(jsonString);
//     final userModelToJson = userModelToJson({'id':id, 'isVerifed':isverifed});

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  int id;
  int isVerifed;

  UserModel({
    required this.id,
    required this.isVerifed,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        isVerifed: json["isVerifed"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "isVerifed": isVerifed,
      };
}
