import 'dart:collection';

import '../entities/user.dart';

class UserDto {
  int? idUser;
  late String name;
  late String email;
  String? photo;
  //List<Debt>? debts;
  //List<Income>? incomes;

  UserDto(User user) {
    idUser = user.idUser;
    name = user.name;
    email = user.email;
    photo = user.photo;
    //this.debts = user.debts;
    //this.incomes = user.incomes;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> result = HashMap();
    result['idUser'] = idUser;
    result['name'] = name;
    result['photo'] = photo;
    return result;
  }

  User fromMap(Map<String, dynamic> user) {
    return User(
        idUser: user['idUser'],
        name: user['name'],
        email: user['email'],
        photo: user['photo']);
  }
}
