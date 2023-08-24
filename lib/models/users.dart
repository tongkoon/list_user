import 'package:json_annotation/json_annotation.dart';

import "user.dart";

part 'users.g.dart';

@JsonSerializable()
class Users {
  Users();

  late List<User> users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);

  static Users filterList(Users users, String filterstring) {
    Users tempUsers = users;
    List<User> userList = tempUsers.users
        .where((u) =>
            (u.name.toLowerCase().contains(filterstring.toLowerCase())) ||
            (u.email.toLowerCase().contains(filterstring.toLowerCase())))
        .toList();
    users.users = userList;
    return users;
  }
}
